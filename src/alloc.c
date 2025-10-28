#include "rlmalloc.h"
#include "rlmalloc/internal.h"
#include "rlmalloc/types.h"

rl_decl_thread rl_partition_t *_rl_local_part_ptr = 0;
 // only initiated when needed
rl_decl_thread rl_partition_t *_rl_global_part_ptr = 0;

void *lr_malloc(size_t size) {
    if (!_rl_local_part_ptr)
        _rl_local_part_ptr = rl_get_local_partition();

    return NULL;
}

