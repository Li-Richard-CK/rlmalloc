`timescale 1ns / 1ps

module rlmalloc_top #(
    parameter integer C_S_AXI_DATA_WIDTH        = 32,
    parameter integer C_S_AXI_ADDR_WIDTH        = 8,
    parameter integer C_INTR_N                  = 4
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

rlmalloc_top_sv rlmalloc_core(
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN),
    
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_AWPROT(S_AXI_AWPROT),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_WREADY(S_AXI_WREADY),
    
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_BREADY(S_AXI_BREADY),
    
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_ARPROT(S_AXI_ARPROT),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    
    .S_AXI_RDATA(S_AXI_RDATA),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_RREADY(S_AXI_RREADY),
    
    .reg_command(reg_command),
    .reg_status(reg_status),
    .reg_asize(reg_asize),
    .reg_indata(reg_indata),
    .reg_outdata(reg_outdata),
    .reg_errc(reg_errc),
    .reg_gp0(reg_gp0),
    .reg_gp1(reg_gp1),
    
    .intr(intr),
    .irq(irq)
);

endmodule
