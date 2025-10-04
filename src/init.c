#include "rlmalloc/internal.h"

extern void _rl_main_part_init(void);

void rl_attr_constructor _rl_auto_init(void) {
    _rl_main_part_init();
}

void rl_attr_destructor _rl_auto_deinit(void) {
    // @todo
}

