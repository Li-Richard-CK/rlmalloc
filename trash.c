#include <stdio.h>
#include <stdint.h>
#include <pthread.h>
#include <assert.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    uint64_t thread_id = 0;
    void *tls_ptr;
    void *tls_ptr2;
    pthread_key_t key;

    __asm__ volatile(
            "mrs %0, tpidr_el0"
            : "=r" (thread_id));
    printf("%lu %lu\n", thread_id, (uint64_t)pthread_self());

    tls_ptr = (void *)thread_id;
    printf("%p\n", tls_ptr);
    
    assert(pthread_key_create(&key, NULL) == 0);
    char *mem = malloc(sizeof(char));
    *mem = 'a';
    pthread_setspecific(key, mem);
    tls_ptr2 = pthread_getspecific(key);
    printf("%p\n", tls_ptr2);
    pthread_key_delete(key);

    return 0;
}

