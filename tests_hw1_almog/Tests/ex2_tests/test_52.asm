
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $238, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $56, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $29, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $222, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $207, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $253, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $123, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -11
source: .byte 144, 196, 217, 82, 154, 19, 221, 50, 129, 138, 50, 56, 128, 146, 30, 209, 239, 241, 179, 248, 165, 80, 29, 222, 53
destination: .byte 31, 21, 238, 215, 197, 244, 140, 144, 207, 92, 199, 118, 213, 253, 41, 150, 123
