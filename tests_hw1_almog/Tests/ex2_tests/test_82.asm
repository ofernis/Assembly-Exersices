
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $147, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $8, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $29, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $88, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $142, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $147, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $106, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $23, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -7
source: .byte 233, 204, 1, 105, 236, 73, 174, 52, 175, 96, 8, 174, 2, 38, 152, 152, 103, 211, 167, 29, 136, 156, 218, 219, 251, 88
destination: .byte 6, 142, 76, 5, 147, 0, 55, 232, 33, 48, 132, 106, 135, 34, 55, 74, 127, 194, 23
