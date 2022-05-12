
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $11, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $164, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $66, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $172, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $249, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $164, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $66, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $238, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $116, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $73, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 24
source: .byte 28, 131, 59, 236, 130, 123, 11, 89, 164, 179, 66, 57, 105, 52, 149, 127, 238, 116, 239, 107, 42, 73
destination: .byte 9, 172, 210, 96, 118, 134, 73, 228, 107, 95, 147, 250, 111, 68, 129, 240, 47, 31, 129, 19, 76, 140, 71, 161, 231, 13, 249
