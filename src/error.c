#include "rlmalloc/error.h"
#include "rlmalloc/internal.h"

__thread char *rl_error_msg;

const char *rl_get_error(void) {
    return rl_error_msg;
}

void rl_set_error(const rl_attr_non_null char *msg) {
    rl_error_msg = (char *)msg;
}

