#include "platform/thread.h"
#include "rlmalloc/types.h"

#include <sys/syscall.h>
#include <unistd.h>

rl_thread_id_t rl_get_thread_id(void) {
    return (rl_thread_id_t)syscall(SYS_gettid);
}

