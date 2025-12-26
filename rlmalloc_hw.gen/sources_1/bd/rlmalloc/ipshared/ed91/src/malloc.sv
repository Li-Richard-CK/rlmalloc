`timescale 1ns / 1ps

module malloc #(
    parameter int C_S_AXI_DATA_WIDTH        = 32
)(
    input wire                               clk,
    input wire                               reset_n,
    
    input wire                               start,
    input wire                               op,
    input wire [(C_S_AXI_DATA_WIDTH - 1):0]  size_in,
    input wire [(C_S_AXI_DATA_WIDTH - 1):0]  data_in,
    
    output wire                              done,
    output wire                              busy,
    output wire [(C_S_AXI_DATA_WIDTH - 1):0] data_out,
    output wire                              error
);

endmodule
