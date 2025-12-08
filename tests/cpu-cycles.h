#ifndef CPU_CYCLES_H
#define CPU_CYCLES_H

#include <stdint.h>

/*
// for arm cortex a9, needs kernel mode
static inline void cortex_enable_pmu(void) {
    uint32_t val = 0x5;
    __asm__ volatile("mcr p15, 0, %0, c9, c14, 0" :: "r" (val));
}

// for arm cortex a9, needs kernel mode
static inline uint64_t cortex_get_ticks(void) {
    uint32_t lo, hi;
    __asm__ volatile("mrrc p15, 0, %0, %1, c9" : "=r" (lo), "=r" (hi));
    return ((uint64_t)hi << 32) | lo;
}
*/


// enable PMCCNTR performance monitor register
// due to kernel mode issues, the original kernel space code is replaced
// by this AI generated code, but STILL "Illegal instruction"
/*
static inline void enable_pmccntr(void)
{
    // asm volatile("mcr p15, 0, %0, c9, c14, 0" :: "r"(1));
    // asm volatile("mcr p15, 0, %0, c9, c12, 1" :: "r"(0x8000000f));

    asm volatile("mcr p15, 0, %0, c9, c14, 0" :: "r"(1));
    asm volatile("mcr p15, 0, %0, c9, c12, 0" :: "r"(1|1<<3));
    asm volatile("mcr p15, 0, %0, c9, c12, 3" :: "r"(0x8000000f));
}

static inline uint64_t get_cpu_ticks(void)
{
    uint32_t low, high;
    asm volatile("mrrc p15, 0, %0, %1, c9" : "=r"(low), "=r"(high));
    return ((uint64_t)high << 32) | low;
}
*/

// just gonna run the tests on local machine
static inline uint64_t get_cpu_ticks(void) {
    uint64_t val;
    asm volatile("mrs %0, cntvct_el0" : "=r" (val));
    return val;
}

#endif // CPU_CYCLES_H

