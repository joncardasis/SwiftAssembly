// Author: Jonathan Cardasis
// ARCH: Intel x86_64 (Simulator)
// Notes: Compiled with clang - comments must be forward slashes

#if ARCH_x86_64

//Take two QUADWORD sized variables
.globl _addTwo
_addTwo:
    pushq %rbp              // push the base pointer
    movq %rsp, %rbp         // establish stack frame
    movq %rdi, -0x8(%rbp)   // first parameter
    movq %rsi, -0x10(%rbp)  // second parameter
    movq -0x8(%rbp), %rsi
    addq -0x10(%rbp), %rsi  // add the second parameter to rsi (currently just first param)
    movq %rsi, %rax         // move result from rsi to rax to be returned
    popq %rbp               // restore base pointer
    retq


#endif
