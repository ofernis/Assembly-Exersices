
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $238, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $56, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $64, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $55, %al
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
source: .byte 103, 211, 196, 15, 90, 235, 219, 38, 107, 56, 86, 235
destination: .byte 238, 193, 192, 205, 255, 221, 194, 35, 64, 55
