#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"
#include "ps/thread.h"

const rl_page_t _rl_page_empty = (rl_page_t) {
    .id = 0,

    .size = 0,
    .size_class = 0,
    .list = NULL,
    .ptr_start = 0,

    .next_page = NULL,

    // padding
};

const rl_partition_t _rl_part_empty = (rl_partition_t) {
    .thread_id = 0,
  
    .flag = false,
    .is_full = false,

    .size = 0,
    .pages = NULL,
    .ptr_start = 0,

    // padding
};

rl_decl_thread rl_partition_t *_rl_local_part =
    (rl_partition_t *)&_rl_part_empty;
static rl_partition_t _rl_global_part = _rl_part_empty;

extern char __heap_start[];

rl_partition_t *rl_get_local_partition(void) {
    return _rl_local_part;
}

rl_partition_t *rl_get_global_partition(void) {
    return &_rl_global_part;
}

void _rl_main_part_init(void) {
    _rl_global_part.thread_id = rl_get_thread_id();
    _rl_global_part.size = RL_DEFAULT_PARTITION_SIZE;
    _rl_global_part.ptr_start = (uintptr_t)__heap_start;

    _rl_global_part.flag = true; // partition is initialized

#if RL_LAZY_LOAD
// probably for non-real-time systems
#else
// SPEED
    
#endif
}

