
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $207, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $84, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $23, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $118, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $23, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $130, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 15
source: .byte 12, 107, 207, 84, 134, 118, 245, 202, 203, 23, 55, 101, 130
destination: .byte 154, 162, 42, 23, 221, 204, 252, 1, 139, 27, 176, 245, 153, 129, 187, 182, 112, 10, 196, 118, 213, 234
