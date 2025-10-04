#ifndef RLMALLOC_TYPES_H
#define RLMALLOC_TYPES_H

#include <stddef.h>
#include <stdint.h>
#include <stdalign.h>

#include "internal.h"

// stores thread id
typedef uint64_t thread_id_t;

// one data
typedef struct rl_data_s {
    uintptr_t origin;
    size_t offset;
} rl_data_t;

// a memory block
typedef struct rl_block_s {
    struct rl_block_s *next;
} rl_block_t;

// a page
typedef struct rl_alignas_cache_line rl_page_s {
    uint32_t id;

    size_t size;
    rl_block_t *blocks;
    uintptr_t ptr_start;

    // padding
    char _padding[
        64 - (sizeof(uint32_t) + sizeof(size_t) 
            + sizeof(rl_block_t *) + sizeof(uintptr_t)) % 64];
} rl_page_t;

// a partition
typedef struct rl_alignas_cache_line rl_partition_s {
    uint32_t id;
    thread_id_t thread_id;
    char desc[64]; // stores the description of the partition

    size_t size;
    rl_page_t *pages;
    uintptr_t ptr_start;

    // padding
    char _padding[
        64 - (sizeof(uint32_t) + sizeof(thread_id_t)
                + 64 + sizeof(size_t) +
                sizeof(rl_page_t) + sizeof(uintptr_t)) % 64];
} rl_partition_t;

static_assert(alignof(rl_page_t) == 64, "rl_page_t is not aligned");
static_assert(alignof(rl_partition_t) == 64, "rl_partition_t is not aligned");

#endif // RLMALLOC_TYPES_H

