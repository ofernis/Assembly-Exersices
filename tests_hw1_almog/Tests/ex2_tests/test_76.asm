
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $99, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $183, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $10, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $155, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $106, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -1
source: .byte 5, 244, 193, 99, 133, 193, 84, 183, 121, 248, 219, 11, 182, 97, 152, 196, 215, 57, 67, 10, 181, 86, 192, 162
destination: .byte 101, 4, 51, 227, 107, 5, 75, 22, 108, 18, 165, 39, 155, 91, 106
