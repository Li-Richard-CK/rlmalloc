#ifndef RLMALLOC_PLATFORM_H
#define RLMALLOC_PLATFORM_H

#include <stdbool.h>

#include "rlmalloc/internal.h"

// RL_PLATFORM
// 0: none
// 1: windows
// 2: unix systems

#ifndef RL_EMBEDDED
#if defined(__STDC_HOSTED__) && __STDC_HOSTED__ == 0
#define RL_PLATFORM 0
#define RL_EMBEDDED 1
#elif defined(__embedded__) || defined(__EMBEDDED__)
#define RL_PLATFORM 0
#define RL_EMBEDDED 1
#else
#define RL_EMBEDDED 0
#if defined(__WIN32)
#define RL_PLATFORM 1
#elif defined(__APPLE__) || defined(__linux__) || defined(__unix__)
#define RL_PLATFORM 2
#endif
#endif
#endif

#endif // RLMALLOC_PLATFORM_H

