#include "platform/thread.h"
#include "rlmalloc/error.h"

rl_thread_id_t rl_get_thread_id(void) {
#if RL_PLATFORM == 0
#elif RL_PLATFORM == 1
#elif RL_PLATFORM == 2
        return (rl_thread_id_t)pthread_self();
#endif
    rl_set_error("rl_get_thread_id failed");
    return 0;
}

