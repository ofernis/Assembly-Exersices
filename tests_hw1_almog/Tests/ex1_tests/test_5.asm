
.global _start

.section .text

test_start:
    mov CountBits, %rax
    cmp $43, %rax
    jne bad_exit

    movq $60, %rax
    movq $0, %rdi
syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .quad 18349670166425494575
CountBits: .zero 4
