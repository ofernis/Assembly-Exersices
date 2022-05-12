
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $11, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $186, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $129, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $64, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $150, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $10, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $79, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 2
source: .byte 11, 173, 195, 42, 229, 201, 110, 69, 64, 53, 150, 137, 196, 10, 221, 44, 248, 6, 149, 156, 95, 207, 162, 145, 44, 218, 152, 79
destination: .byte 125, 216, 111, 75, 16, 186, 13, 57, 244, 128, 3, 63, 19, 96, 141, 236, 241, 121, 162, 209, 76, 101, 192, 231, 121, 219, 59, 129
