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

// round up the next power of 2
static size_t rl_attr_unused rl_det_psize(size_t n, size_t size_class) {
    rl_assert(size_class % 2 == 0
            && "size class must be divisible by 2");
    rl_assert(size_class >= 8
            && "size clas muust be larger or equal to 8");

    size_t v = n * size_class - 1;
    v |= v >> 1;
    v |= v >> 2;
    v |= v >> 4;
    v |= v >> 8;
    v |= v >> 16;
    
#if UINTPTR_MAX == 0xFFFFFFFFFFFFFFFFULL // <-- AI generated
    v |= v >> 32; // laydown some ground work for the future ig
#endif
    return v + 1;
}

bool rl_new_page(rl_partition_t *part, size_t size, size_t size_class) {
    rl_assert(part != NULL);
    rl_assert(size_class % 2 == 0
            && "size class of page must be divisible by 2");
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

        part->pages->size = RL_DEFAULT_METADATA_PAGE_SIZE;
        part->pages->size_class = 0;
        part->pages->list = part->pages;
        part->pages->ptr_start = (uintptr_t)(part->pages);
        part->pages->next_page = NULL;

        part->last_page = part->pages;
        part->size_allocated += RL_DEFAULT_METADATA_PAGE_SIZE;
    }

    rl_page_t *new_page_md =
        (rl_page_t *)((uintptr_t)(part->last_page) + sizeof(rl_page_t));
    
    new_page_md->size = (size > 0) ? size : RL_DEFAULT_PAGE_SIZE;
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
    rl_assert(page->ptr_start != 0);
    rl_assert(size_class % 2 == 0
            && "size class of page must be divible by 2");

    // small pages (size <= 128bytes)
    if (size_class <= RL_DEFAULT_BLOCK_SIZE / 2) {
        // loop through the entire 4KiB/(size) page
        void **ptr = (void **)(page->ptr_start);
        for (size_t i = 0; i < page->size / RL_DEFAULT_BLOCK_SIZE - 1; i++) {
            void **next = (void **)((uintptr_t)ptr + RL_DEFAULT_BLOCK_SIZE);
            *ptr = next;
            ptr = next;
        }
        *ptr = NULL;
        page->list = (void *)(page->ptr_start);
    }
    // medium pages (128bytes < size <= 1KiB)
    else if (RL_DEFAULT_BLOCK_SIZE / 2 < size_class
            && size_class <= RL_ONE_KiB) {
        // @todo
    }
    // large pages (1KiB < size <= 4KiB)
    else if (RL_ONE_KiB < size_class &&
            size_class <= RL_DEFAULT_PAGE_SIZE) {
        // @todo
    }
    // EXTRA LARGE (not supported yet)
    else {
        rl_set_error("how did i end up in here, my problem...");
        return false;
    }

    return true;
}

