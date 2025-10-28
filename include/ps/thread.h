#ifndef RLMALLOC_THREAD_H
#define RLMALLOC_THREAD_H

#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"

// internal thread id, not from OS
inline static rl_attr_always_inline rl_thread_id_t rl_get_thread_id(void) {
    static rl_thread_id_t id = 0;
    id++;
    return id;
}

inline static rl_attr_always_inline uintptr_t rl_get_tls(void) {
    uintptr_t ptr = 0;
    __asm__ volatile(
            "mrc p15, 0, %0, c13, c0, 2\n"
            "bic %0, %0, %w1" // alignment
            : "=r" (ptr)
            : "r" (RL_CACHE_LINE_SIZE));
    return ptr;
}

#endif // RLMALLOC_THREAD_H

