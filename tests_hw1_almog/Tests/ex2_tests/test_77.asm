
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $191, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $50, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $213, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $129, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $133, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $25, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $143, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $88, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $57, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -10
source: .byte 157, 194, 238, 139, 170, 16, 149, 226, 59, 174, 55, 209, 109, 55, 117, 213, 227, 192, 211, 140, 142, 206, 187, 129, 122, 101, 5
destination: .byte 133, 16, 187, 76, 21, 191, 50, 201, 201, 107, 101, 13, 40, 3, 25, 143, 131, 22, 55, 202, 88, 57
