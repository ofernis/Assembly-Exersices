
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $164, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $249, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $247, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $147, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $190, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $164, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $63, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 20
source: .byte 94, 160, 80, 164, 205, 68, 194, 249, 121, 201, 45, 96, 79, 139, 2, 35, 247, 32, 236, 86, 57, 248, 234, 32, 203, 63
destination: .byte 46, 75, 253, 113, 50, 200, 54, 52, 88, 122, 19, 70, 246, 80, 65, 6, 29, 132, 57, 3, 147, 225, 190, 227, 144, 182, 225, 185
