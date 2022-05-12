
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $23, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $161, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $106, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $118, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $56, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $34, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $81, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $250, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $28, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -3
source: .byte 190, 159, 153, 197, 23, 168, 161, 192, 92, 106, 2, 16, 118, 250, 219, 254, 156, 97, 130, 253, 113, 219, 218, 206, 56, 34, 81, 254
destination: .byte 93, 236, 153, 130, 36, 95, 232, 250, 38, 203, 115, 189, 189, 22, 231, 216, 231, 110, 79, 114, 16, 149, 8, 74, 179, 180, 185, 28
