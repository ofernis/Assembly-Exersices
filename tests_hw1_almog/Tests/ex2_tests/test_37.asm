
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $168, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $250, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $102, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $200, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $37, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $8, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $102, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 14
source: .byte 168, 250, 89, 37, 139, 8, 130, 225, 237, 6, 102
destination: .byte 8, 200, 196, 41, 21, 162, 60, 3, 221, 171, 108, 91, 229, 12, 33, 103
