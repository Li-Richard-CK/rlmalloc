#ifndef CPU_CYCLES_H
#define CPU_CYCLES_H

#include <stdint.h>
#include <errno.h>
#include <string.h>      /* memset */
#include <unistd.h>      /* syscall */
#include <sys/syscall.h> /* __NR_perf_event_open */
#include <linux/perf_event.h>
#include <sys/ioctl.h>

static inline int __perf_event_open(struct perf_event_attr *pe,
                                    pid_t pid, int cpu,
                                    int group_fd, unsigned long flags)
{
    return (int)syscall(__NR_perf_event_open, pe, pid, cpu, group_fd, flags);
}

/* Thread-local file descriptor (one counter per thread) */
static __thread int perf_fd = -1;

/* Initialise the counter on first call */
static inline void __init_cpu_cycles(void)
{
    struct perf_event_attr attr = {0};
    attr.type           = PERF_TYPE_HARDWARE;
    attr.size           = sizeof(attr);
    attr.config         = PERF_COUNT_HW_CPU_CYCLES;
    attr.disabled       = 1;          /* start stopped */
    attr.exclude_kernel = 1;          /* optional – ignore kernel cycles */
    attr.exclude_hv     = 1;          /* optional – ignore hypervisor */

    perf_fd = __perf_event_open(&attr, 0 /*self*/, -1 /*any cpu*/, -1, 0);
    if (perf_fd == -1) {
        /* Caller can inspect errno */
        return;
    }
    /* Reset to zero */
    ioctl(perf_fd, PERF_EVENT_IOC_RESET, 0);
    ioctl(perf_fd, PERF_EVENT_IOC_ENABLE, 0);
}

/**
 * get_cpu_cycles() – return the current CPU cycle count.
 *
 * Returns 0 on error (check errno).  The counter is *enabled* once
 * and left running for the lifetime of the thread.
 */
static inline uint64_t get_cpu_cycles(void)
{
    uint64_t val = 0;

    if (perf_fd == -1)               /* first call – try to open */
        __init_cpu_cycles();

    if (perf_fd == -1)               /* still failed */
        return 0;

    if (read(perf_fd, &val, sizeof(val)) != sizeof(val))
        return 0;                    /* read error – keep errno */

    return val;
}

#endif // CPU_CYCLES_H

