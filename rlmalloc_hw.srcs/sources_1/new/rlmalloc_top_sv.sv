`timescale 1ns / 1ps

module rlmalloc_top_sv #(
    parameter int C_S_AXI_DATA_WIDTH        = 32,
    parameter int C_S_AXI_ADDR_WIDTH        = 8,
    parameter int C_INTR_N                  = 4
) (
    input  wire                                         S_AXI_ACLK,
    input  wire                                         S_AXI_ARESETN,
    
    // write request
    input  wire [(C_S_AXI_ADDR_WIDTH-1):0]              S_AXI_AWADDR,
    input  wire [2:0]                                   S_AXI_AWPROT,
    input  wire                                         S_AXI_AWVALID,
    output wire                                         S_AXI_AWREADY,
    
    // write data
    input  wire [(C_S_AXI_DATA_WIDTH - 1):0]            S_AXI_WDATA,
    input  wire [((C_S_AXI_DATA_WIDTH / 8) - 1):0]      S_AXI_WSTRB,
    input  wire                                         S_AXI_WVALID,
    output wire                                         S_AXI_WREADY,
    
    // write response
    output wire [1:0]                                   S_AXI_BRESP,
    output wire                                         S_AXI_BVALID,
    input  wire                                         S_AXI_BREADY,
    
    // read request
    input  wire [(C_S_AXI_ADDR_WIDTH - 1):0]            S_AXI_ARADDR,
    input  wire [2:0]                                   S_AXI_ARPROT,
    input  wire                                         S_AXI_ARVALID,
    output wire                                         S_AXI_ARREADY,
    
    // read data
    output wire [(C_S_AXI_DATA_WIDTH - 1):0]            S_AXI_RDATA,
    output wire [1:0]                                   S_AXI_RRESP,
    output wire                                         S_AXI_RVALID,
    input  wire                                         S_AXI_RREADY,
    
    output wire                                         irq
);

// internal registers
// ps -> pl registers
reg [(C_S_AXI_DATA_WIDTH - 1):0]    slv_reg_control;   // 0x00
reg [(C_S_AXI_DATA_WIDTH - 1):0]    slv_reg_size;      // 0x04
reg [(C_S_AXI_DATA_WIDTH - 1):0]    slv_reg_free_addr; // 0x08

// interal axi
reg                                 axi_awready;
reg                                 axi_wready;
reg [1:0]                           axi_bresp;
reg                                 axi_bvalid;
reg                                 axi_arready;
reg [C_S_AXI_DATA_WIDTH-1:0]        axi_rdata;
reg [1:0]                           axi_rresp;
reg                                 axi_rvalid;

// connects to malloc module
wire                                core_start;
wire                                core_op; // 0: alloc 1: free
wire [(C_S_AXI_DATA_WIDTH - 1):0]   core_size_in;
wire [(C_S_AXI_DATA_WIDTH - 1):0]   core_data_in;

wire                                core_done;
wire                                core_busy;
wire [(C_S_AXI_DATA_WIDTH - 1):0]   core_data_out;
wire                                core_error;

// axi write
assign S_AXI_AWREADY = axi_awready;
assign S_AXI_WREADY  = axi_wready;
assign S_AXI_BRESP   = axi_bresp;
assign S_AXI_BVALID  = axi_bvalid;

always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
        axi_awready       <= 1'b0;
        axi_wready        <= 1'b0;
        axi_bvalid        <= 1'b0;
        axi_bresp         <= 2'b0;
        slv_reg_control   <= 0;
        slv_reg_size      <= 0;
        slv_reg_free_addr <= 0;
    end else begin
        // write address ready
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
            axi_awready <= 1'b1;
        else
            axi_awready <= 1'b0;

        // wriite data ready
        if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
            axi_wready <= 1'b1;
        else
            axi_wready <= 1'b0;

        // write data
        if (axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID) begin
            // decode address (address -> index)
            case (S_AXI_AWADDR[4:2]) 
                3'h0: slv_reg_control   <= S_AXI_WDATA; // 0x00
                3'h1: slv_reg_size      <= S_AXI_WDATA; // 0x04
                3'h2: slv_reg_free_addr <= S_AXI_WDATA; // 0x08
                default:
                    ;
            endcase
        end
        
        // clear control bit when done
        if (core_done) begin
            slv_reg_control[0] <= 1'b0; 
        end

        // write response
        if (axi_awready && S_AXI_AWVALID && axi_wready && S_AXI_WVALID && ~axi_bvalid) begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; // OKAY
        end else if (S_AXI_BREADY && axi_bvalid) begin
            axi_bvalid <= 1'b0;
        end
    end
end

// axi read
assign S_AXI_ARREADY = axi_arready;
assign S_AXI_RDATA   = axi_rdata;
assign S_AXI_RRESP   = axi_rresp;
assign S_AXI_RVALID  = axi_rvalid;

always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
        axi_arready <= 1'b0;
        axi_rvalid  <= 1'b0;
        axi_rresp   <= 2'b0;
        axi_rdata   <= 0;
    end else begin
        // read address
        if (~axi_arready && S_AXI_ARVALID)
            axi_arready <= 1'b1;
        else
            axi_arready <= 1'b0;

        // read data + validity
        if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; // OKAY
            
            // read mux
            case (S_AXI_ARADDR[4:2])
                3'h0: axi_rdata <= slv_reg_control;               // 0x00
                3'h1: axi_rdata <= slv_reg_size;                  // 0x04
                3'h2: axi_rdata <= slv_reg_free_addr;             // 0x08
                3'h3: axi_rdata <= {30'b0, core_busy, core_done}; // 0x0C status
                3'h4: axi_rdata <= core_data_out;                 // 0x10 result
                3'h5: axi_rdata <= {31'b0, core_error};           // 0x14 error
                default: axi_rdata <= 0;
            endcase
        end else if (axi_rvalid && S_AXI_RREADY) begin
            axi_rvalid <= 1'b0;
        end
    end
end

// malloc
assign core_start    = slv_reg_control[0]; // 0 start
assign core_op       = slv_reg_control[1]; // 1 option 0: alloc 1: free
assign core_size_in  = slv_reg_size;       
assign core_data_in  = slv_reg_free_addr;

malloc u_malloc_core (
    .clk        (S_AXI_ACLK),
    .reset_n    (S_AXI_ARESETN),
    
    // input
    .start      (core_start),
    .op         (core_op),
    .size_in    (core_size_in),
    .data_in    (core_data_in),
    
    // output
    .done       (core_done),
    .busy       (core_busy),
    .data_out   (core_data_out),
    .error      (core_error)
);

// interrupt
assign irq = core_done;

endmodule
