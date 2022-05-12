
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $14, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $156, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $122, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $220, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $58, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $20, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 17
source: .byte 125, 14, 6, 239, 255, 156, 53, 122, 49, 192, 22, 209, 199, 115, 28, 236, 107, 93, 112, 158, 146, 244, 151, 133, 175, 20
destination: .byte 58, 179, 56, 140, 65, 250, 49, 232, 98, 221, 202, 239, 152, 92, 21, 117, 63, 199, 24, 31, 220, 177, 231, 58, 217, 130, 235, 124, 216
