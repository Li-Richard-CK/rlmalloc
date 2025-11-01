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

/* AI generated to avoid linking errors, by Grok */
ENTRY(_start)

SECTIONS
{
    . = 0x400000;

    /* Interp section for dynamic linking */
    .interp : { *(.interp) }

    /* Note sections */
    .note.gnu.build-id : { *(.note.gnu.build-id) }
    .note.ABI-tag : { *(.note.ABI-tag) }

    /* Text segment */
    .text : {
        *(.text .text.*)
    }
 
    /* Read-only data */
    .rodata : { *(.rodata .rodata.*) }

    /* Data segment */
    .data : { *(.data .data.*) }

    /* BSS segment */
    .bss : { *(.bss .bss.*) }

    /* Your custom sections */
    .heap (NOLOAD) : {
        . = ALIGN(4096);
        __heap_start = .;
        . = . + 8M;
        __heap_end = .;
    }

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

