#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>

#include "cpu-cycles.h"

#define ITERATIONS 10000

struct out_s {
    size_t size;
    size_t total_size;
    size_t allocations;

    double time_sum;
    uint64_t cycles_sum;

    double average_time;
    double average_cycles;
};

static inline uint64_t get_ticks(void) {
    uint64_t val;
    asm volatile("mrs %0, cntvct_el0" : "=r" (val));
    return val;
}

struct out_s run_test(const size_t size) {
    struct out_s out = {
        .size = size,
        .total_size = 0,
        .allocations = 0,

        .time_sum = 0,
        .cycles_sum = 0,

        .average_time = 0,
        .average_cycles = 0,
    };

    double start_time = 0;
    double end_time = 0;
    uint64_t start_cycles = 0;
    uint64_t end_cycles = 0;

    printf("======== STARTING ========\n");    
    // simple, yet it works
    for (int i = 0; i < ITERATIONS; i++) {
        start_time = (double)clock() / CLOCKS_PER_SEC;
        start_cycles = /* get_ticks() */ get_cpu_cycles();
        // yeah, again. anything but allocations

        void *mem = malloc(size);

        // everything should be done before this line
        end_cycles = /* get_ticks() */ get_cpu_cycles();
        end_time = (double)clock() / CLOCKS_PER_SEC;
        out.cycles_sum += end_cycles - start_cycles;
        out.time_sum += end_time - start_time;
        out.allocations++;
        out.total_size += size;
        free(mem);
    }
    printf("======== ENDING ========\n");

    out.average_cycles = (double)out.cycles_sum / out.allocations;
    out.average_time = out.time_sum / out.allocations;

    return out;
}

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    struct out_s out = run_test(atoi(argv[1]));

    printf("\n======== RESULTS ========"
            "\nSize(Bytes): %zu"
            "\nTotal size(Bytes): %zu"
            "\nAllocations: %zu"
            "\nAverage time(s/allocation): %0.9f"
            "\nAverage cycles(cycles/allocation): %0.9f\n",
            out.size,
            out.total_size,
            out.allocations,
            out.average_time,
            out.average_cycles);

    return 0;
}

