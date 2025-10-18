#ifndef RLMALLOC_THREAD_H
#define RLMALLOC_THREAD_H

#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"

#include <pthread.h>

inline static rl_attr_always_inline rl_thread_id_t rl_get_thread_id(void) {
    rl_thread_id_t id;
    __asm__ volatile(
            "mrc p15, 0, %0, c13, c0, 2\n"
            "bic %0, %0, %1"
            : "=r" (id)
            : "r" (sizeof(rl_partition_t) - 1));
    return id;
}

inline static rl_attr_always_inline uintptr_t rl_get_tls(void) {
    void *ptr = NULL;
    pthread_getspecific();
}

#endif // RLMALLOC_THREAD_H

