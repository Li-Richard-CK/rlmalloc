#include "rlmalloc.h"

#include <stdio.h>

// void _rl_main_part_init(void);

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    // _rl_main_part_init();

    rl_partition_t *global_part = rl_get_global_partition();
    printf("%d\n", global_part->flag);
    printf("%p %u\n", global_part, global_part->ptr_start);

    return 0;
}

