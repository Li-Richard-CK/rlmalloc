// this piece of thing does not work, illegal instruction mcr mrrc p15 for pmu and ticks
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h>
#include <stdbool.h>
#include <stdint.h>
#include <math.h>

#define ONE_MB          (1ULL << 20)

struct out_s {
    size_t n;
    size_t accessed;

    size_t size;
    size_t total_size;
    size_t allocations;

    double start_time;
    double end_time;
    double time_taken;
    double time_per_access;

    uint64_t start_cycles;
    uint64_t end_cycles;
    uint64_t cycles_taken;
    double cycles_per_access;
};

// for normal arm cpus
static inline uint64_t get_ticks(void) {
    uint64_t val;
    asm volatile("mrs %0, cntvct_el0" : "=r" (val));
    return val;
}

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
struct out_s *run_test(const size_t sizes[], const size_t n) {
    static struct out_s *outs;

    outs = (struct out_s *)calloc(n, sizeof(struct out_s));
    if (!outs) {
        perror("calloc failed");
        exit(1);
    }

    srand(time(NULL));
    //cortex_enable_pmu();

    for (size_t i = 0; i < n; i++) {
        outs[i].size = sizes[i];
        outs[i].n = (size_t)(ONE_MB / outs[i].size);
        outs[i].total_size = outs[i].n * outs[i].size;
        outs[i].allocations = 1;
        uint64_t j, k; // for iterations
        
        char *mem = (char *)malloc(outs[i].total_size);
        if (!mem) {
            perror("malloc failed");
            free(outs);
            exit(1);
        }

        for (j = 0; j < outs[i].total_size; j++)
            mem[j] = (char)(rand() % outs[i].size);
        j = k = 0;

        printf("======== STARTING - %zuBYTES ========\n", outs[i].size);
        outs[i].start_time = (double)clock() / CLOCKS_PER_SEC;
        outs[i].start_cycles = /* cortex_get_ticks() */ get_ticks();
        // everything after this line should only consist of
        // sample memory accessing and modifying
        // ISOLATION AREA :)))
        
        for (; j < outs[i].total_size; j++) {
            mem[j] = (char)(rand() % outs[i].size);
            mem[j] /= 2;
            mem[j] %= 3;
            mem[j] *= 4;
            outs[i].accessed += 4;

            if (j % (uint64_t)(rand() % 3 + 1) == 0) {
                mem[(size_t)rand() % outs[i].total_size] =
                    (char)(rand() % outs[i].size);
                outs[i].accessed++;
            }
        }

        // everything should be finished before this line 
        printf("======== ENDING ========\n");
        outs[i].end_cycles = /* cortex_get_ticks() */ get_ticks();
        outs[i].end_time = (double)clock() / CLOCKS_PER_SEC;
        outs[i].time_taken = outs[i].end_time - outs[i].start_time;
        outs[i].cycles_taken = outs[i].end_cycles - outs[i].start_cycles;
        outs[i].time_per_access = outs[i].time_taken / outs[i].accessed;
        outs[i].cycles_per_access =
            (double)outs[i].cycles_taken / outs[i].accessed;
        free(mem);
    }

    return outs;
}

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    struct out_s *outs = run_test((const size_t [])
            { 256, 512, 1024, 2048, 4096, 8192 }, 6);

    for (int i = 0; i < 6; i++) {
        struct out_s out = outs[i];
        // wow formatting outputs
        printf("\n======== RESULTS - %zuBYTES ========"
            "\nAccessed: %zu"
            "\nTotal blocks: %zu"
            "\nAllocations"
            "\n\tTotal size(Bytes): %zu"
            "\n\tAmount: %zu"
            "\nTime"
            "\n\tStart time(since program entered, s): %.3f"
            "\n\tEnd time(since program entered, s): %.3f"
            "\n\tTime taken(s): %.3f"
            "\n\tTime /access: %.9f"
            "\nCPU Cycles"
            "\n\tStarting cycles: %llu"
            "\n\tEnding cycles: %llu"
            "\n\tCycles taken: %llu"
            "\n\tCycles /access: %.3f\n",
            out.size,
            out.n,
            out.accessed,
            out.total_size,
            out.allocations,
            out.start_time,
            out.end_time,
            out.time_taken,
            out.time_per_access,
            out.start_cycles,
            out.end_cycles,
            out.cycles_taken,
            out.cycles_per_access);
    }

    free(outs);
    return 0;
}

