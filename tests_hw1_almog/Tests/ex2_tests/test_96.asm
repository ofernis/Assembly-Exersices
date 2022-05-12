
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $138, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $64, %al
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
source: .byte 189, 205, 136, 34, 165, 39, 177, 179, 109, 206, 3, 2, 151, 17, 47, 196, 149, 130, 100, 246, 198, 134, 9, 199, 159, 154, 122, 140, 242
destination: .byte 138, 214, 71, 91, 32, 202, 248, 227, 163, 94, 245, 64
