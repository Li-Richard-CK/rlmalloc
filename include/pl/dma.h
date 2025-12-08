#ifndef RLMALLOC_PL_DMA_H
#define RLMALLOC_PL_DMA_H

#include <stdint.h>

// register, just, slower than r0 - r15 :)
typedef volatile uint32_t *rl_dma_register_t;

// same as the annoying (but oddly cool) verilog code
typedef enum rl_dma_register_type_e {
    RL_DMA_REGISTER_COMMAND     = 0,
    RL_DMA_REGISTER_STATUS      = 1,
    RL_DMA_REGISTER_ASIZE       = 2,
    RL_DMA_REGISTER_INADDR      = 3,
    RL_DMA_REGISTER_OUTADDR     = 4,
    RL_DMA_REGISTER_ERRC        = 5,
    RL_DMA_REGISTER_GP0         = 6,
    RL_DMA_REGISTER_GP1         = 7,
    RL_DMA_REGISTER_N // automatically handled
} rl_dma_register_type_t;

typedef enum rl_dma_command_type_e {
    RL_DMA_COMMAND_RESET        = 0x0, //0b00,
    RL_DMA_COMMAND_ALLOC        = 0x1, //0b01,
    RL_DMA_COMMAND_FREE         = 0x2  //0b10
} rl_dma_command_type_t;

typedef enum rl_dma_status_type_e {
    RL_DMA_STATUS_IDLE          = 0x0, //0b00,
    RL_DMA_STATUS_ALLOC         = 0x1, //0b01,
    RL_DMA_STATUS_FREE          = 0x2, //0b10,
    RL_DMA_STATUS_ERR           = 0x3  //0b11
} rl_dma_status_type_t;

typedef enum rl_dma_error_code_e {
    RL_DMA_ERROR_CODE_NONE      = 0,
    // ...
} rl_dma_error_code_t;

static inline const char *rl_dma_translate_error_code(rl_dma_error_code_t code) {
    switch (code) {
        case RL_DMA_ERROR_CODE_NONE:
            return "no error encountered";
        default:
            return "unknown error code";
    }
}

#endif // RLMALLOC_PL_DMA_H

