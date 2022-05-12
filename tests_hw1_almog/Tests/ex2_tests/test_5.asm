
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $217, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 22
source: .byte 228, 63, 92, 3, 167, 86, 59, 24, 245, 226, 32, 235, 217
destination: .byte 121, 20, 8, 96, 28, 97, 108, 86, 26, 42, 42, 12, 224, 77, 45, 220, 175, 193, 165, 161, 58, 186, 184, 79, 189, 118, 128
