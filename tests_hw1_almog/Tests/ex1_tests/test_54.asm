
.global _start

.section .text

test_start:
    mov CountBits, %rax
    cmp $27, %rax
    jne bad_exit

    movq $60, %rax
    movq $0, %rdi
syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .quad 12347798442872254501
CountBits: .zero 4
