
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $155, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 5
source: .byte 177, 35, 128, 27, 218, 49, 180, 246, 9, 207, 155
destination: .byte 9, 154, 123, 204, 38, 209, 124, 162, 171, 154, 74, 217, 223
