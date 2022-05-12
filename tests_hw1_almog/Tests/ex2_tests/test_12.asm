
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $172, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $188, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $1, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $113, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $183, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $168, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $129, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $172, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $1, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $99, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $243, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 13
source: .byte 107, 38, 208, 26, 19, 136, 205, 9, 172, 188, 1, 158, 113, 99, 128, 243
destination: .byte 5, 156, 253, 49, 219, 163, 11, 247, 161, 165, 158, 78, 25, 97, 101, 4, 127, 39, 183, 7, 168, 129, 193
