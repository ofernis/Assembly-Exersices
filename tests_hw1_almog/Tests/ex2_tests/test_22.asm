
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $213, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $104, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $26, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 9
source: .byte 141, 213, 251, 233, 202, 40, 123, 85, 160, 236, 30, 104, 134, 26
destination: .byte 38, 88, 226, 44, 208, 45, 250, 142, 136, 221, 158, 93, 3, 100, 251, 86, 123
