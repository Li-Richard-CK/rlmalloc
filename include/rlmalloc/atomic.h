#ifndef RLMALLOC_ATOMIC_H
#define RLMALLOC_ATOMIC_H

#include <stdatomic.h>

#define rl_atomic(fname) rl_atomic_#fname

#endif // RLMALLOC_ATOMIC_H

