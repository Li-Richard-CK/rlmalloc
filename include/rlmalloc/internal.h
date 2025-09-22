// Internal use for rlmalloc. Created on 21th September, 2025
#ifndef RLMALLOC_INTERNAL_H
#define RLMALLOC_INTERNAL_H

#if defined __GNUC__ || defined __clang__
#define rl_attr_always_inline __attribute__((always_inline))
#define rl_attr_const __attribute__((const))
#define rl_attr_pure __attribute__((pure))
#define rl_attr_malloc __attribute__((malloc))
#define rl_attr_alloc_size(size) __attribute__((alloc_size(size)))
#define rl_attr_alloc_size_2(size0, size1) __attribute__((alloc_size(size0, size1)))
#define rl_attr_non_null __attribute__((nonnull))
#define rl_attr_warn_unused __attribute__((warn_unused_result))
#define rl_attr_hidden __attribute__((visibility("hidden")))
#define rl_attr_internal __attribute__((visibility("internal")))
#define rl_attr_constructor __attribute__((constructor))
#define rl_attr_destructor __attribute__((destructor))

#else
#define rl_attr_always_inline
#define rl_attr_const
#define rl_attr_pure
#define rl_attr_malloc
#define rl_attr_alloc_size(size)
#define rl_attr_alloc_size_2(size0, size1)
#define rl_attr_non_null
#define rl_attr_warn_unused
#define rl_attr_hidden
#define rl_attr_internal
#define rl_attr_constructor
#define rl_attr_destructor
#endif

#define rl_alignas_cache_line alignas(64)

#endif // RLMALLOC_INTERNAL_H

