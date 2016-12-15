// Author: Jonathan Cardasis
// ARCH: ARM
// Notes: Compiled with clang - comments must be forward slashes

#if ARCH_ARM64

//Take two QUADWORD sized variables
.align 4
.global _addTwo
_addTwo:
    sub sp, sp, #16
    stp x1, x0, [sp] //do something with stack
    ldp x1, x0, [sp]

    add x0, x0, x1
    add sp, sp, #16
    ret

#endif
