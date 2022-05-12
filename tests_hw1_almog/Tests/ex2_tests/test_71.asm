
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $157, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $188, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $157, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $138, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $20, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -23
source: .byte 54, 12, 60, 62, 169, 175, 92, 165, 238, 202, 88, 249, 143, 133, 49, 14, 234, 128, 143, 213, 241, 203, 197, 219, 218, 203, 151, 48, 179
destination: .byte 51, 182, 197, 159, 199, 85, 223, 117, 74, 42, 188, 177, 157, 3, 140, 233, 141, 100, 45, 51, 138, 205, 86, 118, 20
