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
    
    // dma registers
    //localparam REG_COMMAND     = 0; // allocate? free?
    //localparam REG_STATUS      = 1; // status :)
    //localparam REG_ASIZE       = 2; // allocation size  
    //localparam REG_INADDR      = 3; // input address (ps -> pl)
    //localparam REG_OUTADDR     = 4; // output address (pl -> ps)
    //localparam REG_ERRC        = 5; // error code
    //localparam REG_GP0         = 6; // general purpose register
    //localparam REG_GP1         = 7; // general purpose register
    input  wire                                         reg_command,
    output wire                                         reg_status,
    input  wire                                         reg_asize,
    input  wire [(C_S_AXI_ADDR_WIDTH - 1):0]            reg_indata,
    output wire [(C_S_AXI_ADDR_WIDTH - 1):0]            reg_outdata,
    output wire                                         reg_errc,
    inout  wire [(C_S_AXI_DATA_WIDTH - 1):0]            reg_gp0,
    input  wire [(C_S_AXI_DATA_WIDTH - 1):0]            reg_gp1,
    
    // interrupt handling
    input  wire [(C_INTR_N - 1):0]                      intr,
    output wire                                         irq
);

reg wskid, rskid; // 0: not in use 1: in use
reg [(C_S_AXI_ADDR_WIDTH - 1):0] waddr, raddr;

assign S_AXI_AWREADY = 1'b1;
assign S_AXI_WREADY = 1'b1;
assign S_AXI_ARREADY = 1'b1;
assign S_AXI_BRESP = 2'b00; // OKAY
assign S_AXI_RRESP = 2'b00;

always @(*) begin
    if (!S_AXI_ARESETN) begin // handle resets
        wskid <= 0; rskid <= 0;
        waddr <= 0; raddr <= 0;
    end else begin
        // handle write requests with write skid buffer
        if (S_AXI_AWVALID && !wskid) begin
            wskid <= 1;
            waddr <= S_AXI_AWADDR;
        end
        
        // reset write skid buffer when pl fully recieves data
        if (S_AXI_BREADY && S_AXI_BVALID)
            wskid <= 0;
        
        // handle read requests with read skid buffer
        if (S_AXI_ARVALID && !rskid) begin
            rskid <= 1;
            raddr <= S_AXI_ARADDR;
        end
        
        // reset read skid buffer when pl fully reads data
        if (S_AXI_RRESP && S_AXI_RVALID)
            rskid <= 0;
    end
end

// handle writing
always @(posedge S_AXI_ACLK) begin
    if (wskid) begin
        
    end
end

endmodule
