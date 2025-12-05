`timescale 1 ns / 1 ps

module rlmalloc_top #(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5,
    
    parameter integer C_NUM_OF_INTR = 1
)(
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
    input  wire                                         S_AXI_RREADY
);

rlmalloc_slave_lite_inter_v1_0_S_AXI_INTR #(
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
) axi_slave_inst (
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
    .S_AXI_RREADY(S_AXI_RREADY)
);

// Instantiate the interface
dma_register_if reg_if();

// Connect AXI slave outputs to interface inputs (PS → PL)
assign reg_if.regs[0] = axi_slave_inst.slv_reg0; // COMMAND (PS writes)
assign reg_if.regs[2] = axi_slave_inst.slv_reg2; // SIZE (PS writes)
assign reg_if.regs[3] = axi_slave_inst.slv_reg3; // IN_ADDR (PS writes)
assign reg_if.regs[6] = axi_slave_inst.slv_reg6; // GP0 (PS writes)
assign reg_if.regs[7] = axi_slave_inst.slv_reg7; // GP1 (PS writes)

// Connect interface outputs to AXI slave inputs (PL → PS)
assign axi_slave_inst.slv_reg1 = reg_if.regs[1]; // STATUS (PL writes)
assign axi_slave_inst.slv_reg4 = reg_if.regs[4]; // OUT_ADDR (PL writes)
assign axi_slave_inst.slv_reg5 = reg_if.regs[5]; // ERROR (PL writes)

// Your memory allocator with interface
malloc malloc_inst (
    .reg_if(reg_if.pl)
);

initial begin
    $display("RLMalloc Wrapper initialized");
end

endmodule
