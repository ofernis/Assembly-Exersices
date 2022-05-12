
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $253, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $220, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $155, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $156, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $75, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $4, %al
    jne bad_exit

    movb 19(%rbx), %al
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
num: .long 9
source: .byte 229, 9, 154, 253, 114, 75, 163, 35, 251, 137, 127, 196, 138, 109, 184, 101, 67, 250, 4, 48
destination: .byte 179, 154, 24, 151, 138, 163, 78, 91, 58, 111, 235, 220, 57, 111, 50, 126, 153, 240, 18, 128, 193, 60, 134, 155, 156, 222, 19, 174, 171, 166
