
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $147, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $253, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $229, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 25
source: .byte 134, 5, 21, 178, 173, 59, 35, 165, 192, 47, 127, 229
destination: .byte 91, 140, 96, 16, 50, 13, 209, 154, 18, 147, 15, 253, 228, 134, 68, 50, 129, 107, 225, 179, 44, 120, 193, 82, 17, 10, 71
