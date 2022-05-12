
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $220, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $124, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $18, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $23, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $148, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 13
source: .byte 16, 225, 220, 72, 76, 19, 85, 32, 125, 124, 18, 199, 101, 73, 249, 71, 141, 80, 130, 12, 23, 48, 184, 148
destination: .byte 64, 40, 199, 26, 81, 160, 29, 220, 242, 236, 22, 71, 183, 53, 135, 51, 69, 62, 27, 82, 201, 26, 136, 244, 134
