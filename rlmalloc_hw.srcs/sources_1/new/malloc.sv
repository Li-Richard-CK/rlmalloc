`timescale 1ns / 1ps

module malloc(
    dma_register_if.pl reg_if
);

/*
// ai generated for testing axi lite bridge
// Simple test: when PS writes a command, PL responds
always @(*) begin
    // If PS writes ALLOC command, set status to ALLOCATING
    if (reg_if.regs[0][1:0] == 2'b01) begin // CMD_ALLOC
        reg_if.regs[1] <= 2'b01; // STATUS_ALLOC
        reg_if.regs[4] <= 32'hDEADBEEF; // Set output address
        $display("[%0t] PL: Received ALLOC command, size=%0d", $time, reg_if.regs[2]);
    end
    // If PS writes FREE command, set status to FREEING  
    else if (reg_if.regs[0][1:0] == 2'b10) begin // CMD_FREE
        reg_if.regs[1] <= 2'b10; // STATUS_FREE
        $display("[%0t] PL: Received FREE command, addr=0x%08h", $time, reg_if.regs[3]);
    end
    // If command is IDLE, set status to IDLE
    else if (reg_if.regs[0][1:0] == 2'b00) begin // CMD_RESET
        reg_if.regs[1] <= 2'b00; // STATUS_IDLE
    end
end
*/

/*
// registers for reference
localparam REG_COMMAND     = 0; // allocate? free?
localparam REG_STATUS      = 1; // status :)
localparam REG_ASIZE       = 2; // allocation size  
localparam REG_INADDR      = 3; // input address (ps -> pl)
localparam REG_OUTADDR     = 4; // output address (pl -> ps)
localparam REG_ERRC        = 5; // error code
localparam REG_GP0         = 6; // general purpose register
localparam REG_GP1         = 7; // general purpose register

// commands for reference
localparam CMD_RESET       = 2'b00;
localparam CMD_ALLOC       = 2'b01;
localparam CMD_FREE        = 2'b10;

// status for reference
localparam STATUS_IDLE     = 2'b00;
localparam STATUS_ALLOC    = 2'b01;
localparam STATUS_FREE     = 2'b10;
localparam STATUS_ERR      = 2'b11;

// error code for reference
localparam ERRC_NONE       = 32'b0;
*/

wire [1:0] reg_command = reg_if.regs[0][1:0];

// allocation process
always @(*) begin
    // even if there is no inaddr, process the request but just return an error
    if (reg_if[0] == 2'b01 && reg_if[1] != 2'b01) begin
        if (reg_if[3] == 0) begin
            
        end else begin
        end
    end
end

endmodule
