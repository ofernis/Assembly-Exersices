.global _start

.section .text
_start:
    xor %rbx, %rbx
    movl num, %ebx
    leaq source, %rsi
    leaq destination, %rdi
    cmpl $0x0, %ebx
    je END_HW1
    jg SETUP_HW1

NEG_NUM_EX1_HW1:
    leaq source, %rdi
    leaq destination, %rsi
    imul $-1, %ebx

SETUP_HW1:
    leaq (%rsi), %rcx
    leaq (%rdi), %r8
    sub %rcx , %r8 #calculate the distance between src and dst
    cmp $0,  %r8
    jl NEG_DIST_HW1
    cmpq %rbx, %r8
    jg START_TO_END_HW1 #handle no overlapping
    leaq -1(%rbx, %rsi), %rsi
    leaq -1(%rbx, %rdi), %rdi
    jmp END_TO_START_HW1
    
NEG_DIST_HW1:
    imul $-1, %r8 #handle negative dist (dst address is smaller than src)
    
START_TO_END_HW1:
    movb (%rsi), %al
    movb %al, (%rdi)
    leaq 1(%rsi), %rsi
    leaq 1(%rdi), %rdi
    dec %rbx
    cmpl $0x0, %ebx
    jg START_TO_END_HW1
    jmp END_HW1
    
END_TO_START_HW1:
    movb (%rsi), %al
    movb %al, (%rdi)
    leaq -1(%rsi), %rsi
    leaq -1(%rdi), %rdi
    dec %rbx
    cmpl $0x0, %ebx
    jg END_TO_START_HW1
    
END_HW1:
    