
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $29, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $8, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $58, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $151, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $15, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -2
source: .byte 106, 255, 170, 94, 82, 232, 144, 225, 176, 48, 65, 3, 111, 8, 58, 73, 211, 192, 148, 182, 101, 165, 198, 214, 136, 138, 48
destination: .byte 43, 29, 40, 182, 154, 243, 153, 239, 165, 51, 141, 68, 227, 74, 7, 209, 39, 251, 44, 24, 34, 151, 15
