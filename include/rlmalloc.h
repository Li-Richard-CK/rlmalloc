// Richard Li memory allocator header. Created on 21th September, 2025
#ifndef RLMALLOC_H
#define RLMALLOC_H

/* ---------------------------------Constants------------------------------- */
#define RLMALLOC_VERSION 100 // major minor minor

/* ---------------------------------Includes-------------------------------- */
#include <stdint.h>
#include <stddef.h>
#include <stdalign.h>
#include <assert.h>

#include "rlmalloc/internal.h"
#include "rlmalloc/types.h"

/* ----------------------------Function Prototyes--------------------------- */


/* -----------------------------Inline functions---------------------------- */
static inline void * rl_attr_always_inline rl_align(
        void *block,
        size_t alignment) {
#if defined RL_DEBUG
    assert(block != NULL);
    assert((alignment & (alignment - 1)) == 0
            && "Alignment is not power of 2");
    assert(alignment <= 256 && "Alignment exceeds 256bytes");
#endif

    // no checks since this function is mostly used by the allocator,
    // rather than the user
    return (void *)(((uintptr_t)block + alignment - 1) & ~(alignment - 1));
}

#endif // RLMALLOC_H

