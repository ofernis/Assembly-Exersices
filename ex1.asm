.global _start

.section .text
_start:
    movq (num), %rbx
    xor %rcx, %rcx

L1_HW1:
    cmpq $0x0, %rbx
    je END_HW1
    shrq %rbx
    jae L1_HW1
    inc %ecx
    jmp L1_HW1

END_HW1:
    movl %ecx, CountBits
