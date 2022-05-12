
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $252, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $185, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $62, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $246, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $98, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $67, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $234, %al
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
source: .byte 244, 252, 90, 2, 145, 13, 244, 22, 207, 87, 185, 141, 112, 79, 90, 9, 141, 175, 31, 197, 21, 148, 62, 21, 43
destination: .byte 242, 60, 246, 98, 116, 71, 95, 95, 125, 67, 234
