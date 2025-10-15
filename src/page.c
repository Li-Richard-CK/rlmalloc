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
#if defined(RL_DEBUG)
    assert(part != NULL);
    assert(size_class % 2 == 0 && "size class of page must be divible by 2");
    assert(((size & (size - 1)) == 0 || size == 0)
            && "size of page must be power of 2");
    assert(part->flag == true && "partition must be initialised first");
#endif
    uintptr_t next_block_addr =
        (part->pages->prev_page->ptr_start
         + part->pages->prev_page->size + 1);

    if ((next_block_addr - 1) + size > part->ptr_end) {
        rl_set_error("size of page too large");
        return false;
    }

    _rl_concate_uint(1, 2);

    return true;
}

