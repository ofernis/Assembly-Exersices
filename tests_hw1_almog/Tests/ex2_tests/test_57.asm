
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $230, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $29, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $33, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $142, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $230, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $249, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $246, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $85, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -7
source: .byte 231, 52, 158, 201, 229, 17, 13, 204, 72, 72, 197, 178, 195, 26, 29, 47, 16, 9, 223, 209, 135, 234, 125, 26, 33, 44, 249, 162, 3, 219
destination: .byte 142, 177, 165, 136, 201, 230, 15, 137, 34, 115, 178, 202, 239, 249, 217, 127, 51, 194, 137, 246, 8, 243, 69, 85
