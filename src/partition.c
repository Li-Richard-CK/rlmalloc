#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"
#include "ps/thread.h"
#include "rlmalloc.h"

// just an empty page
const rl_page_t _rl_page_empty      = (rl_page_t) {
    .size                           = 0,
    .size_class                     = 0,
    .list                           = NULL,
    .ptr_start                      = 0,

    .alloc_n                        = 0,

    .next_page                      = NULL,
};

// just an empty partition
const rl_partition_t _rl_part_empty = (rl_partition_t) {
    .thread_id                      = 0,
  
    .flag                           = false,
    .is_full                        = false,

    .size                           = 0,
    .pages                          = NULL,
    .ptr_start                      = 0,

    .dma_region                     = NULL,
};

rl_decl_thread rl_partition_t *_rl_local_part =
    (rl_partition_t *)&_rl_part_empty;
static rl_partition_t _rl_global_part = _rl_part_empty;

extern char __heap_start;
char *__rl_heap_start = &__heap_start;

rl_partition_t *rl_get_local_partition(void) {
    return _rl_local_part;
}

rl_partition_t *rl_get_global_partition(void) {
    return &_rl_global_part;
}

void _rl_main_part_init(void) {
    _rl_global_part.thread_id = rl_get_thread_id();
    // the partition is still of normal partition size (1MiB),
    // but it can expand to 2MiB on request
    _rl_global_part.size = RL_DEFAULT_PARTITION_SIZE;
    _rl_global_part.ptr_start = (uintptr_t)__rl_heap_start;

    _rl_global_part.flag = true; // partition is initialized

    _rl_local_part = &_rl_global_part;

#if RL_LAZY_LOAD
// probably for non-real-time systems
#else
// SPEED, initialize earlier
    // small pages (64 pages), ngl this is kinda slow
    for (size_t size_class = 8; size_class <= 128; size_class += 2) {
        rl_new_page(&_rl_global_part, RL_DEFAULT_PAGE_SIZE, size_class);
    }
#endif
}

