SECTIONS
{
    .heap (NOLOAD) :
    {
        . = ALIGN(4096);
        __heap_start = .;
        . = . + 8M; /* 8MiB heap */
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
        . = . + 1M; /* 1MiB tls */
        __tbss_end = .;
    }

    __tls_size = __tbss_end - __tdata_start;
}

