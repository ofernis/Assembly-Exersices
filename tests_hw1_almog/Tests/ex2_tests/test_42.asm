
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $98, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $195, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $145, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $56, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $16, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 7
source: .byte 101, 244, 68, 159, 68, 53, 177, 20, 173, 122, 141, 148, 25, 79, 52, 7, 115, 105, 93, 16
destination: .byte 232, 76, 152, 43, 96, 58, 114, 63, 50, 98, 202, 154, 121, 120, 149, 17, 238, 39, 24, 49, 195, 118, 115, 221, 108, 40, 152, 145, 140, 56
