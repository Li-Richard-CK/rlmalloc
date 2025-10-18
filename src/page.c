#include "rlmalloc.h"
#include "rlmalloc/types.h"
#include "rlmalloc/internal.h"
#include "rlmalloc/error.h"

#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// a + b
static inline uint32_t rl_attr_always_inline _rl_concate_uint(
        uint32_t a,
        uint32_t b) {
    if (b < 10) return a * 10 + b;
    if (b < 100) return a * 100 + b;
    if (b < 1000) return a * 1000 + b;
    return a * 10000 + b;
}

bool rl_new_page(rl_partition_t *part, size_t size, size_t size_class) {
    rl_assert(part != NULL);
    rl_assert(size_class % 2 == 0 && "size class of page must be divible by 2");
    rl_assert(((size & (size - 1)) == 0 || size == 0)
            && "size of page must be power of 2");
    rl_assert(part->flag == true && "partition must be initialised first");

    uintptr_t next_mem = 
        ((uintptr_t)(part->pages->prev_page) + part->pages->prev_page->size) + 1;

    if (next_mem > part->ptr_end)
    {
        rl_set_error("not enough memory to allocate new page");
        return false;
    }
   
    // stores page metadata before each page
    // not the most efficient, @todo
    rl_page_t *new_page_md = (rl_page_t *)next_mem;
    *new_page_md = (rl_page_t) {
        .id = _rl_concate_uint(part->id, part->pages->prev_page->id + 1),

        .size = size - sizeof(rl_page_t),
        .size_class = size_class,
        .blocks = (rl_block_t *)next_mem,
        .ptr_start = next_mem,

        .next_page = NULL,
        .prev_page = part->pages->prev_page
    };

    part->pages->prev_page->next_page = new_page_md;

    return true;
}

