/* my code
SECTIONS
{
    .heap (NOLOAD) :
    {
        . = ALIGN(4096);
        __heap_start = .;
        . = . + 8M;
        __heap_end = .;
    }

    .tdata :
    {
        . = ALIGN(8);
        __tdata_start = .;
        *(.tdata .tdata.*)
        __tdata_end = .;
    }

    .tbss (NOLOAD) :
    {
        . = ALIGN(8);
        __tbss_start = .;
        *(.tbss .tbss.*)
        . = . + 1M;
        __tbss_end = .;
    }

    __tls_size = __tbss_end - __tdata_start;
}
*/

ENTRY(_start)

SECTIONS
{
    . = 0x400000;

    .interp : { *(.interp) }

    .note.gnu.build-id : { *(.note.gnu.build-id) }
    .note.ABI-tag : { *(.note.ABI-tag) }

    .text : { *(.text .text.*) }
    .rodata : { *(.rodata .rodata.*) }
    .data : { *(.data .data.*) }
    .bss : { *(.bss .bss.*) }

    .heap (NOLOAD) : {
        . = ALIGN(4096); /* page size */
        __heap_start = .;
        . = . + 1M;
        __heap_end = .;
    }

    /* multi-threading might not be able to be implemented due to time constraints */
    /* TLS */
    .tdata : {
        . = ALIGN(8);
        __tdata_start = .;
        *(.tdata .tdata.*)
        __tdata_end = .;
    }

    .tbss (NOLOAD) : {
        . = ALIGN(8);
        __tbss_start = .;
        *(.tbss .tbss.*)
        __tbss_end = .;
    }
    __tls_size = __tbss_end - __tdata_start;
}

