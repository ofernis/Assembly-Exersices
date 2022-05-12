
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $11, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $210, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $183, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $126, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $8, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $245, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 22
source: .byte 89, 196, 11, 241, 108, 135, 202, 152, 59, 103, 41, 242, 27, 210, 126, 8, 208, 245
destination: .byte 173, 162, 167, 150, 17, 250, 201, 16, 231, 206, 180, 218, 33, 9, 231, 138, 199, 222, 117, 191, 72, 101, 183, 180, 62, 115, 171, 29
