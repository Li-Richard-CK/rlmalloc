#ifndef RLMALLOC_THREAD_H
#define RLMALLOC_THREAD_H

#include "platform.h"
#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"

#if RL_PLATFORM == 0
#elif RL_PLATFORM == 1
#elif RL_PLATFORM == 2
#include <pthread.h>
#endif

rl_thread_id_t rl_get_thread_id(void) rl_attr_internal;

#endif // RLMALLOC_THREAD_H

