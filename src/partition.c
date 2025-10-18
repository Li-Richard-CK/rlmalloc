#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"
#include "ps/thread.h"

const rl_page_t _rl_page_empty = (rl_page_t) {
    .id = 0,

    .size = 0,
    .size_class = 0,
    .blocks = NULL,
    .ptr_start = 0,

    .next_page = NULL,
    .prev_page = NULL,

    // padding
};

const rl_partition_t _rl_part_empty = (rl_partition_t) {
    .id = 0,
    .thread_id = 0,
  
    .flag = false,
    .is_full = false,

    .size = 0,
    .pages = NULL,
    .ptr_start = 0,
    .ptr_end = 0,

    // padding
};

rl_decl_thread rl_partition_t _rl_local_part = _rl_part_empty;
static rl_partition_t _rl_global_part = _rl_part_empty;

rl_partition_t *rl_get_local_partition(void) {
    return &_rl_local_part;
}

rl_partition_t *rl_get_global_partition(void) {
    return &_rl_global_part;
}

void _rl_main_part_init(void) {
    _rl_global_part.id = 0; // global partiton id must be 0
    _rl_global_part.thread_id = rl_get_thread_id();
    _rl_global_part.size = RL_DEFAULT_PARTITION_SIZE;
    // set flags and allocate pages later (lazy load)
}

