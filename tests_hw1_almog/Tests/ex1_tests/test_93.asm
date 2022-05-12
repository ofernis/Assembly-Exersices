
.global _start

.section .text

test_start:
    mov CountBits, %rax
    cmp $36, %rax
    jne bad_exit

    movq $60, %rax
    movq $0, %rdi
syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .quad 5365651762400389675
CountBits: .zero 4
