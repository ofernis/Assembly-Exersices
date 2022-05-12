
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $250, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $87, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $113, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $210, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $133, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $118, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $4, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $48, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 24
source: .byte 250, 5, 45, 20, 48, 57, 169, 80, 44, 128, 87, 71, 144, 113, 21, 118, 210, 24, 219, 242, 199, 4, 229, 9, 98, 195, 166, 206, 48
destination: .byte 242, 253, 51, 13, 33, 230, 228, 157, 84, 30, 163, 18, 86, 109, 127, 91, 48, 186, 66, 148, 93, 89, 132, 1, 208, 133, 196, 37, 35, 140
