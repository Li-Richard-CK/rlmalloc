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
    rl_assert(size_class % 2 == 0
            && "size class of page must be divible by 2");
    rl_assert(((size & (size - 1)) == 0 || size == 0)
            && "size of page must be power of 2");
    rl_assert(part->flag == true && "partition must be initialised first");
    
    if ((part->size_allocated + size) > part->size) {
        rl_set_error("partition does not have enough space \
                use main partition instead");
        return false;
    }

    if (!part->pages) {
        part->pages = (rl_page_t *)(part->ptr_start);

        part->pages->id = _rl_concate_uint(part->thread_id, 0);
        part->pages->size = RL_DEFAULT_PAGE_SIZE;
        part->pages->size_class = 0;
        part->pages->list = part->pages;
        part->pages->ptr_start = (uintptr_t)(part->pages);
        part->pages->next_page = NULL;

        part->last_page = part->pages;
        part->size_allocated += RL_DEFAULT_PAGE_SIZE;
    }

    rl_page_t *new_page_md =
        (rl_page_t *)((uintptr_t)(part->last_page) + sizeof(rl_page_t));
    
    new_page_md->id =
        _rl_concate_uint(part->thread_id, part->last_page->id + 1);
    new_page_md->size = size;
    new_page_md->size_class = size_class;
    new_page_md->ptr_start =
        part->last_page->ptr_start + part->last_page->size;
    new_page_md->list = (void *)(new_page_md->ptr_start);
    new_page_md->next_page = NULL;

    part->last_page->next_page = new_page_md;
    part->last_page = new_page_md;

    part->size_allocated += size;

    if (part->size_allocated + size == part->size)
        part->is_full = true;
    return true;
}

bool rl_list_init(rl_page_t *page, size_t size_class) {
    rl_assert(page != NULL);
    rl_assert(size_class % 2 == 0
            && "size class of page must be divible by 2");

    return true;
}

