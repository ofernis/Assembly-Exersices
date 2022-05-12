
.global _start

.section .text

test_start:
    mov CountBits, %rax
    cmp $23, %rax
    jne bad_exit

    movq $60, %rax
    movq $0, %rdi
syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .quad 3338614927597633836
CountBits: .zero 4
