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

// internal axi signals with skid buffers
reg                                 awvalid_skid;
reg [(C_S_AXI_ADDR_WIDTH-1):0]      awaddr_skid;
reg [2:0]                           awprot_skid;

reg                                 wvalid_skid;
reg [(C_S_AXI_DATA_WIDTH - 1):0]    wdata_skid;
reg [((C_S_AXI_DATA_WIDTH / 8) - 1):0] wstrb_skid;

reg                                 arvalid_skid;
reg [(C_S_AXI_ADDR_WIDTH - 1):0]    araddr_skid;
reg [2:0]                           arprot_skid;

// ready signals
reg                                 axi_awready;
reg                                 axi_wready;
reg                                 axi_arready;

// response signals
reg [1:0]                           axi_bresp;
reg                                 axi_bvalid;
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
wire                                core_error;       // 1-bit

// write skid buffer
assign S_AXI_AWREADY = axi_awready;
assign S_AXI_WREADY  = axi_wready;

always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
        awvalid_skid <= 1'b0;
        wvalid_skid  <= 1'b0;
        axi_awready  <= 1'b0;
        axi_wready   <= 1'b0;
    end else begin
        // write address skid
        if (S_AXI_AWVALID && axi_awready) begin
            awvalid_skid <= 1'b0;                   // consumed
        end else if (S_AXI_AWVALID && !axi_awready && !awvalid_skid) begin
            awvalid_skid <= 1'b1;
            awaddr_skid  <= S_AXI_AWADDR;
            awprot_skid  <= S_AXI_AWPROT;
        end

        // write skid
        if (S_AXI_WVALID && axi_wready) begin
            wvalid_skid <= 1'b0;                    // consumed
        end else if (S_AXI_WVALID && !axi_wready && !wvalid_skid) begin
            wvalid_skid <= 1'b1;
            wdata_skid  <= S_AXI_WDATA;
            wstrb_skid  <= S_AXI_WSTRB;
        end

        // ready when no skid data pending
        axi_awready <= !awvalid_skid;
        axi_wready  <= !wvalid_skid;
    end
end

// write
wire write_valid = (awvalid_skid || S_AXI_AWVALID) && (wvalid_skid || S_AXI_WVALID);

wire [(C_S_AXI_ADDR_WIDTH-1):0]   write_addr = awvalid_skid ? awaddr_skid : S_AXI_AWADDR;
wire [(C_S_AXI_DATA_WIDTH - 1):0] write_data = wvalid_skid ? wdata_skid : S_AXI_WDATA;
wire [((C_S_AXI_DATA_WIDTH / 8) - 1):0] write_strb = wvalid_skid ? wstrb_skid : S_AXI_WSTRB;

always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
        axi_bvalid <= 1'b0;
        axi_bresp  <= 2'b0;
        slv_reg_control   <= 0;
        slv_reg_size      <= 0;
        slv_reg_free_addr <= 0;
    end else begin
        // consume write when both channels ready
        if (write_valid && !axi_bvalid) begin
            case (write_addr[4:2])
                3'h0: begin // 0x00 control
                    if (write_strb[0]) slv_reg_control[7:0]   <= write_data[7:0];
                    if (write_strb[1]) slv_reg_control[15:8]  <= write_data[15:8];
                    if (write_strb[2]) slv_reg_control[23:16] <= write_data[23:16];
                    if (write_strb[3]) slv_reg_control[31:24] <= write_data[31:24];
                end
                3'h1: begin // 0x04 size
                    if (write_strb[0]) slv_reg_size[7:0]   <= write_data[7:0];
                    if (write_strb[1]) slv_reg_size[15:8]  <= write_data[15:8];
                    if (write_strb[2]) slv_reg_size[23:16] <= write_data[23:16];
                    if (write_strb[3]) slv_reg_size[31:24] <= write_data[31:24];
                end
                3'h2: begin // 0x08 free_addr
                    if (write_strb[0]) slv_reg_free_addr[7:0]   <= write_data[7:0];
                    if (write_strb[1]) slv_reg_free_addr[15:8]  <= write_data[15:8];
                    if (write_strb[2]) slv_reg_free_addr[23:16] <= write_data[23:16];
                    if (write_strb[3]) slv_reg_free_addr[31:24] <= write_data[31:24];
                end
                default: ;
            endcase

            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b00; // OKAY
        end else if (axi_bvalid && S_AXI_BREADY) begin
            axi_bvalid <= 1'b0;
        end

        // clear start bit when core finishes
        if (core_done) begin
            slv_reg_control[0] <= 1'b0;
        end
    end
end

assign S_AXI_BRESP  = axi_bresp;
assign S_AXI_BVALID = axi_bvalid;

// read skid buffer
assign S_AXI_ARREADY = axi_arready;

always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
        arvalid_skid <= 1'b0;
        axi_arready  <= 1'b0;
        axi_rvalid   <= 1'b0;
        axi_rdata    <= 0;
        axi_rresp    <= 2'b0;
    end else begin
        // read address skid
        if (S_AXI_ARVALID && axi_arready) begin
            arvalid_skid <= 1'b0;
        end else if (S_AXI_ARVALID && !axi_arready && !arvalid_skid) begin
            arvalid_skid <= 1'b1;
            araddr_skid  <= S_AXI_ARADDR;
            arprot_skid  <= S_AXI_ARPROT;
        end

        axi_arready <= !arvalid_skid;

        // read
        if ((arvalid_skid || S_AXI_ARVALID) && !axi_rvalid) begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b00; // OKAY

            if (arvalid_skid)
                case (araddr_skid[4:2])
                    3'h0: axi_rdata <= slv_reg_control;               // 0x00
                    3'h1: axi_rdata <= slv_reg_size;                  // 0x04
                    3'h2: axi_rdata <= slv_reg_free_addr;             // 0x08
                    3'h3: axi_rdata <= {30'b0, core_busy, core_done}; // 0x0C status
                    3'h4: axi_rdata <= core_data_out;                 // 0x10 result
                    3'h5: axi_rdata <= {31'b0, core_error};           // 0x14 error
                    default: axi_rdata <= 0;
                endcase
            else
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

assign S_AXI_RDATA  = axi_rdata;
assign S_AXI_RRESP  = axi_rresp;
assign S_AXI_RVALID = axi_rvalid;

// malloc
assign core_start    = slv_reg_control[0]; // start
assign core_op       = slv_reg_control[1]; // 0: alloc 1: free
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
    .error      (core_error)        // single bit
);

// interrupt
assign irq = core_done;

endmodule
