#!/bin/sh

objdump -d -C -r -z --no-show-raw-insn build/librlmalloc.so > librlmalloc_disasm.s
readelf -a build/librlmalloc.so > librlmalloc_memory_map.txt

