#ifndef RLMALLOC_ERROR_H
#define RLMALLOC_ERROR_H

#include "internal.h"

// get error message
const char *rl_get_error(void);

// set error message (for internal)
void rl_set_error(const char *msg) rl_attr_non_null rl_attr_internal;

#endif // RLMALLOC_ERROR_H

