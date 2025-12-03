interface dma_register_if #(
    parameter RLMALLOC_REGISTER_WIDTH = 32,
    parameter RLMALLOC_DMA_WIDTH      = 8
);

/* bad design
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] aready; // allocation - pl ready
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] avalid; // allocation - ps valid
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] fready; // free - pl ready
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] fvalid; // free - ps valid

 * status codes
 * 2'b00 - idle
 * 2'b01 - allocating
 * 2'b10 - freeing
 * 2'b11 - encountered error

logic [(RLMALLOC_REGISTER_WIDTH - 1):0] status;
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] size; // just size not size class
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] inaddr; // input address - af
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] outaddr; // output address - a

localparam SIDLE = 32'b0;
localparam SALLOC = 2'b01;
localparam SFREE = 2'b10;
localparam SERR = 2'b11;
*/

// registers 32bits * 8
logic [(RLMALLOC_REGISTER_WIDTH - 1):0] regs [0:(RLMALLOC_DMA_WIDTH - 1)];

// register map
localparam REG_COMMAND     = 0; // allocate? free?
localparam REG_STATUS      = 1; // status :)
localparam REG_ASIZE       = 2; // allocation size  
localparam REG_INADDR      = 3; // input address (ps -> pl)
localparam REG_OUTADDR     = 4; // output address (pl -> ps)
localparam REG_ERRC        = 5; // error code
localparam REG_GP0         = 6; // general purpose register
localparam REG_GP1         = 7; // general purpose register

// commands (reg command)
localparam CMD_RESET       = 2'b00;
localparam CMD_ALLOC       = 2'b01;
localparam CMD_FREE        = 2'b10;

// status (reg status)
localparam STATUS_IDLE     = 2'b00;
localparam STATUS_ALLOC    = 2'b01;
localparam STATUS_FREE     = 2'b10;
localparam STATUS_ERR      = 2'b11;

// error code (reg errc)
localparam ERRC_NONE       = 32'b0;
// added later

modport pl (
    inout regs
);

// for debugging
task automatic print_regs();
    begin
        $display("----- DMA REGISTERS -----");
        $display("REG[0] COMMAND: 0x%08h", regs[REG_COMMAND]);
        $display("REG[1] STATUS: 0x%08h", regs[REG_STATUS]);
        $display("REG[2] ALLOCATION SIZE: 0x%08h", regs[REG_ASIZE]);
        $display("REG[3] INPUT ADDRESS: 0x%08h", regs[REG_INADDR]);
        $display("REG[4] OUTPUT ADDRESS: 0x%08h", regs[REG_OUTADDR]);
        $display("REG[5] ERROR CODE: 0x%08h", regs[REG_ERRC]);
        $display("REG[6] GENERAL PURPOSE 0: 0x%08h", regs[REG_GP0]);
        $display("REG[7] GENERAL PURPOSE 1: 0x%08h", regs[REG_GP1]);
    end
endtask

endinterface
