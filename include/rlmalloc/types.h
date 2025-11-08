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

#define RL_DEFAULT_PAGE_SIZE (4 * RL_ONE_KiB)
#define RL_DEFAULT_METADATA_PAGE_SIZE (2 * RL_DEFAULT_PAGE_SIZE)

// a page (just the metadata)
typedef struct rl_attr_packed rl_page_s {
    // 24 bytes total
    size_t                          size;
    size_t                          size_class;
    void *                          list;
    uintptr_t                       ptr_start;

    // again extra data 4 bytes
    // cool stuff
    uint32_t                        bitmap;

    struct rl_page_s *              next_page;
} rl_page_t;

#define RL_DEFAULT_PARTITION_SIZE RL_ONE_MiB

// a partition (aka the heap? just the metadata)
typedef struct rl_attr_cache_line_alignment rl_partition_s {
    rl_thread_id_t                  thread_id;

    // for checking whether this partition is initiated
    bool                            flag;
    bool                            is_full;

    size_t                          size;
    size_t                          size_allocated;
    // address of the first page
    // which stores the metadata for all pages
    rl_page_t *                     pages;
    rl_page_t *                     last_page;
    uintptr_t                       ptr_start;

    // padding
    char _padding[
        RL_CACHE_LINE_SIZE - (sizeof(rl_thread_id_t)
                + sizeof(bool) + sizeof(bool) + sizeof(size_t)
                + sizeof(size_t) + sizeof(rl_page_t *) + sizeof(rl_page_t *)
                + sizeof(uintptr_t)) % RL_CACHE_LINE_SIZE];
} rl_partition_t;

static_assert(alignof(rl_partition_t) == RL_CACHE_LINE_SIZE,
        "rl_partition_t is not aligned");

#endif // RLMALLOC_TYPES_H

