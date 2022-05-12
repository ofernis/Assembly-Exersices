
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $210, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $186, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $37, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $186, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $18, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 13
source: .byte 206, 17, 149, 139, 78, 37, 3, 210, 17, 60, 86, 186, 18
destination: .byte 224, 3, 77, 220, 129, 217, 71, 180, 4, 244, 250, 80, 118, 239, 63, 5, 125, 135
