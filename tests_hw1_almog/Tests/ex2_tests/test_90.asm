
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $157, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $147, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $126, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $231, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $118, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $247, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $253, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $4, %al
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
source: .byte 107, 140, 112, 151, 157, 20, 215, 80, 153, 147, 151, 206, 232, 26, 126, 115, 98, 82, 24, 204, 231, 246, 197, 255, 163, 216, 135, 118, 145, 188
destination: .byte 209, 152, 149, 247, 57, 191, 108, 123, 47, 24, 136, 179, 139, 82, 50, 253, 47, 4
