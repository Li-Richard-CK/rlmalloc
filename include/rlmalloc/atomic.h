#ifndef RLMALLOC_ATOMIC_H
#define RLMALLOC_ATOMIC_H

#define rl_atomic_fetch_add(v, in)              \
    __asm__ volatile(                           \
            "ldrex %1, %0"                      \
            : "r" (v)                           \
            : "=r" (in))

#endif // RLMALLOC_ATOMIC_H

