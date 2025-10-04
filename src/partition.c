#include "rlmalloc.h"
#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"
#include "platform/thread.h"

const rl_page_t _rl_page_empty = (rl_page_t) {
    .id = 0,

    .size = RL_ONE_KiB * 4,
    .blocks = NULL,
    .ptr_start = 0,

    // padding
};

const rl_partition_t _rl_part_empty = (rl_partition_t) {
    .id = 0,
    .thread_id = 0,
    
    .size = RL_ONE_MiB,
    .pages = (rl_page_t *)&_rl_page_empty,
    .ptr_start = 0,
    
    // padding
};

rl_decl_thread rl_partition_t *_rl_local_part =
    (rl_partition_t *)&_rl_part_empty;
static rl_partition_t _rl_global_part = _rl_part_empty;

extern bool _rl_new_page(rl_page_t *page);

void _rl_main_heap_init(void) {
    _rl_global_part.id = 0; // global partiton id must be 0
    _rl_global_part.thread_id = rl_get_thread_id();
    _rl_global_part.size = RL_ONE_MiB * 8;
    _rl_new_page(_rl_global_part.pages);
}

