// this piece of thing does not work, illegal instruction mcr mrrc p15 for pmu and ticks
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h>
#include <stdbool.h>
#include <stdint.h>

#include "cpu-cycles.h"

#define ONE_KiB (1ULL << 10)

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

struct __attribute__((packed)) a_24_byte_object_s {
    uint64_t foo, foo1, foo2;
};

// for normal arm cpus
static inline uint64_t get_ticks(void) {
    uint64_t val;
    asm volatile("mrs %0, cntvct_el0" : "=r" (val));
    return val;
}

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
        outs[i].n = (size_t)(4 * ONE_KiB / sizes[i]);
        outs[i].accessed = 0;
        outs[i].size = sizes[i];
        outs[i].total_size = 4 * ONE_KiB;
        outs[i].allocations = 1;
        uint64_t j, k; // for iterations
        
        char *mem = (char *)malloc(outs[i].total_size + 64 - 1 + 64/* a buffer for alignments */);
        if (!mem) {
            perror("malloc failed");
            free(outs);
            exit(1);
        }
        char *aligned_mem = (char *)(((uintptr_t)mem + 64 - 1) & ~(64 - 1));

        for (j = 0; j < outs[i].total_size; j++)
            aligned_mem[j] = (char)(rand() % outs[i].size);
        j = k = 0;

        printf("======== STARTING - %zuBYTES ========\n", outs[i].size);
        outs[i].start_time = (double)clock() / CLOCKS_PER_SEC;
        outs[i].start_cycles =
            /* cortex_get_ticks() get_ticks() */ get_cpu_cycles();
        // everything after this line should only consist of
        // sample memory accessing and modifying
        // ISOLATION AREA :)))
       
        uint64_t current_block = 0;
        for (uint64_t access_count = 0; access_count < 1000; access_count++) {
            char *cur_block = &aligned_mem[current_block * outs[i].size];
            
            for (k = 0; k < outs[i].size / 24; k++) {
                struct a_24_byte_object_s *cur_data =
                    (struct a_24_byte_object_s *)(cur_block + k * 24);
                // use xor so no compiler optimiztions
                cur_data->foo ^= ((uint64_t)rand() % 32);
                cur_data->foo1 ^= ((uint64_t)rand() % 32);
                cur_data->foo2 ^= ((uint64_t)rand() % 32);
            }
            outs[i].accessed += outs[i].size / 24;

            // occasional random jump 5% probability
            if (rand() % 5 == 0) {
                current_block = rand() % outs[i].n;
            } else {
                current_block = (current_block + 1) % outs[i].n;
            }
        }

        // everything should be finished before this line
        printf("======== ENDING ========\n");
        // outs[i].end_cycles = get_ticks();
        outs[i].end_cycles = get_cpu_cycles();
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
            { 32, 64, 128, 256, 512, 1024 }, 6);

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
            "\n\tStart time(since program entered, s): %.9f"
            "\n\tEnd time(since program entered, s): %.9f"
            "\n\tTime taken(s): %.9f"
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

