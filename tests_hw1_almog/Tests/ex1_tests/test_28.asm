
.global _start

.section .text

test_start:
    mov CountBits, %rax
    cmp $35, %rax
    jne bad_exit

    movq $60, %rax
    movq $0, %rdi
syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .quad 8511826228434388655
CountBits: .zero 4
