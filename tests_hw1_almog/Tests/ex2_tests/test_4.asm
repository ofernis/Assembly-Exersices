
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $129, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $109, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $230, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $168, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $147, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $191, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $200, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $230, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $34, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $177, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 9
source: .byte 191, 140, 128, 180, 153, 42, 215, 85, 76, 125, 243, 74, 35, 85, 228, 200, 159, 230, 34, 84, 169, 210, 26, 27, 115, 201, 32, 101, 177
destination: .byte 213, 206, 193, 36, 210, 101, 198, 172, 14, 91, 129, 179, 174, 9, 7, 38, 109, 230, 229, 65, 233, 63, 150, 226, 39, 90, 168, 147, 187
