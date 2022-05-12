
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $88, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $176, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $199, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -6
source: .byte 213, 17, 146, 96, 81, 71, 52, 254, 215, 88, 119, 60, 210, 74, 14
destination: .byte 245, 181, 89, 97, 176, 233, 166, 141, 208, 153, 154, 134, 199
