
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $198, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $198, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $164, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $99, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $155, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $98, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $75, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $191, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $164, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $190, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $135, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 2
source: .byte 255, 194, 171, 152, 63, 165, 210, 75, 21, 207, 191, 228, 164, 98, 177, 2, 93, 102, 138, 7, 0, 250, 53, 216, 205, 190, 221, 135
destination: .byte 127, 241, 170, 198, 135, 224, 198, 146, 95, 9, 234, 224, 184, 164, 107, 124, 62, 99, 17, 24, 155, 141, 98, 158, 43, 141, 116, 35, 115, 118
