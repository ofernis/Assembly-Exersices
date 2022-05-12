
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $39, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $10, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $150, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $1, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $39, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $99, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $252, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $129, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $1, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $138, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $210, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $122, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $133, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $247, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $93, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -14
source: .byte 135, 23, 180, 162, 239, 106, 61, 228, 155, 198, 71, 12, 63, 70, 99, 7, 252, 229, 9, 137, 30, 0, 129, 107, 145, 241, 125
destination: .byte 239, 76, 39, 10, 150, 1, 138, 39, 69, 236, 72, 196, 40, 152, 50, 210, 122, 33, 34, 223, 133, 167, 78, 247, 27, 130, 93
