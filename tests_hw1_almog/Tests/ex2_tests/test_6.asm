
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $168, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $23, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $249, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $46, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $89, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 16
source: .byte 78, 153, 192, 169, 96, 134, 168, 27, 28, 38, 214, 101, 170, 201, 170, 134, 153, 154, 46, 139, 89
destination: .byte 221, 62, 1, 87, 116, 51, 165, 227, 84, 174, 215, 5, 15, 33, 44, 212, 52, 23, 197, 226, 249
