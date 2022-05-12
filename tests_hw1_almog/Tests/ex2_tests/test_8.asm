
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $23, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $64, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $23, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $183, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 8
source: .byte 23, 245, 201, 53, 107, 128, 47, 72, 112, 115, 183
destination: .byte 178, 15, 236, 177, 60, 23, 200, 251, 41, 78, 118, 64, 53
