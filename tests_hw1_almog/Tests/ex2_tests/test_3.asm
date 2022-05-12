
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $207, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $247, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $25, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $183, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $86, %al
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
source: .byte 207, 70, 0, 177, 6, 234, 144, 194, 153, 49, 171, 169, 65, 243, 255, 9, 86
destination: .byte 118, 102, 239, 238, 174, 56, 108, 113, 189, 233, 86, 155, 189, 115, 247, 25, 8, 12, 32, 238, 187, 187, 183
