#include "rlmalloc.h"
#include "rlmalloc/internal.h"
#include "rlmalloc/types.h"
#include "rlmalloc/error.h"
#include "pl/dma.h"

void *rl_malloc(size_t size) {
    rl_assert(size != 0);

    rl_partition_t *part;
    void *mem = NULL;
    rl_dma_register_t regs;

    // local partition first, then global partition
    if ((part = rl_get_local_partition()) == NULL) {
        part = rl_get_global_partition();
        if (part->is_full || part == NULL) {
            rl_set_error("global partition is full :)");
            return NULL;
        }
    }

    regs = part->dma_registers;

    regs[RL_DMA_REGISTER_ERRC]       = RL_DMA_ERROR_CODE_NONE;
    regs[RL_DMA_REGISTER_ASIZE]      = size;
    regs[RL_DMA_REGISTER_INADDR]     = 0;

    regs[RL_DMA_REGISTER_COMMAND]    = RL_DMA_COMMAND_ALLOC;

    uint32_t timeout = 1000; // maximum 1000 attempts (1ms in 1Gz cpu)
    while ((regs[RL_DMA_REGISTER_STATUS]
                != RL_DMA_STATUS_IDLE) && timeout--);
    if (timeout == 0) {
        rl_set_error("pl operation timeout");
        return NULL;
    }

    if (regs[RL_DMA_REGISTER_ERRC] != RL_DMA_ERROR_CODE_NONE) {
        rl_set_error(rl_dma_translate_error_code(regs[RL_DMA_REGISTER_ERRC]));
        return NULL;
    }

    return (void *)(uintptr_t)regs[RL_DMA_REGISTER_OUTADDR];
}

