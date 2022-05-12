
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $188, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $143, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $67, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $81, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $231, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $143, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $81, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $10, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 28
source: .byte 149, 61, 121, 41, 231, 206, 49, 7, 61, 171, 219, 69, 203, 97, 188, 100, 60, 40, 143, 232, 179, 86, 0, 71, 67, 81, 223, 12, 27, 10
destination: .byte 2, 40, 101, 150, 220, 180, 52, 58, 14, 117, 180, 138, 238, 200, 171, 51, 205, 144, 237, 130, 125, 135, 106, 160, 22, 107, 145, 247, 8, 218
