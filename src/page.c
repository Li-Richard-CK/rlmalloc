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

static void _rl_split_page(rl_page_t *page) {
    
}

bool rl_new_page(rl_partition_t *part, size_t size, size_t size_class) {
#if defined(RL_DEBUG)
    assert(part != NULL);
    assert(size_class % 2 == 0 && "size class of page must be divible by 2");
    assert((size & (size - 1)) == 0 || size == 0
            && "size of page must be power of 2");
    assert(part->flag == true && "partition must be initialised first");
#endif
    uintptr_t next_page_addr =
        ((uintptr_t)(part->last_page) + part->last_page->size + 1);

    if ((next_page_addr - 1) + size > part->ptr_end) {
        rl_set_error("size of page too large");
        return false;
    }
    rl_page_t *new_page = (rl_page_t *)next_page_addr;
    new_page->id = _rl_concate_uint(part->id, part->last_page->id + 1);
    if (size == 0)
        new_page->size = RL_ONE_KiB * 4;
    else
        new_page->size = size;
    new_page->size_class = size_class;
    new_page->blocks = // @todo
    _rl_split_page(new_page);

    part->last_page->next_page = new_page;
    return true;
}

