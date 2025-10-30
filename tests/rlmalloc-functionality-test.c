#include "rlmalloc.h"

#include <stdio.h>

int main(int argc, char *argv[]) {
    rl_partition_t *global_part = rl_get_global_partition();
    printf("%p %p\n", global_part, (void *)(global_part->ptr_start));

    return 0;
}

