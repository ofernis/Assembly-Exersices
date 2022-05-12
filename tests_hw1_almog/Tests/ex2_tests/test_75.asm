
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $145, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $181, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 0
source: .byte 67, 156, 73, 78, 229, 249, 137, 31, 184, 95, 234, 220, 229, 192, 241, 246
destination: .byte 55, 248, 145, 202, 185, 71, 154, 92, 213, 181
