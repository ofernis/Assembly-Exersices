
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $119, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $250, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $148, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $88, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $161, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $37, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $39, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $88, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $161, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $243, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 26
source: .byte 153, 179, 60, 7, 223, 115, 205, 119, 37, 199, 110, 159, 26, 170, 49, 39, 250, 167, 215, 148, 105, 242, 88, 86, 144, 161, 243
destination: .byte 45, 33, 72, 185, 251, 28, 43, 174, 179, 180, 82, 12, 213, 150, 155, 182, 151, 86, 156, 160, 5, 6, 154, 115, 184, 80, 239
