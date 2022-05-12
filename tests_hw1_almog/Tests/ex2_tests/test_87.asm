
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $150, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $118, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $142, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $138, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $208, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -4
source: .byte 186, 246, 154, 1, 14, 87, 192, 19, 28, 171, 21, 118, 133, 215, 79, 210, 218, 31
destination: .byte 89, 150, 218, 142, 240, 170, 242, 226, 93, 0, 138, 208
