#ifndef RLMALLOC_TYPES_H
#define RLMALLOC_TYPES_H

#include <stddef.h>
#include <stdint.h>
#include <stdalign.h>
#include <assert.h>
#include <stdbool.h>

#include "internal.h"

// stores thread id
typedef uint32_t rl_thread_id_t;

// one data
typedef struct rl_ptr_s {
    uintptr_t origin;
    size_t offset;
} rl_ptr_t;

// a memory block
typedef struct rl_block_s {
    struct rl_block_s *next;
} rl_block_t;

// a page (just the metadata)
typedef struct rl_attr_cache_line_alignment rl_page_s {
    uint32_t id; // partition id + index inside partition

    size_t size;
    size_t size_class;
    rl_block_t *blocks;
    uintptr_t ptr_start;

    struct rl_page_s *next_page;
    struct rl_page_s *prev_page;

    // padding
    char _padding[
        64 - (sizeof(uint32_t) + sizeof(size_t) 
            + sizeof(rl_block_t *) + sizeof(uintptr_t)) % 64];
} rl_page_t;

// a partition (aka the heap? just the metadata)
typedef struct rl_attr_cache_line_alignment rl_partition_s {
    uint32_t id; // index of partition
    rl_thread_id_t thread_id;

    bool flag; // for checking whether this partition is initiated
    bool is_full;

    size_t size;
    rl_page_t *pages; // address of the first page
    uintptr_t ptr_start;
    uintptr_t ptr_end;

    // padding
    char _padding[
        64 - (sizeof(uint32_t) + sizeof(rl_thread_id_t)
                + sizeof(size_t) + sizeof(rl_page_t) + sizeof(uintptr_t)) % 64];
} rl_partition_t;

static_assert(alignof(rl_page_t) == 64, "rl_page_t is not aligned");
static_assert(alignof(rl_partition_t) == 64, "rl_partition_t is not aligned");

#endif // RLMALLOC_TYPES_H

