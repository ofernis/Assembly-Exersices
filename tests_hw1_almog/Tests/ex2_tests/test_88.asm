
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $157, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $129, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $87, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $157, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $175, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $129, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $205, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -24
source: .byte 122, 35, 96, 54, 153, 26, 22, 57, 178, 224, 1, 241, 156, 102, 22, 34, 27, 245, 232, 120, 25, 137, 248, 186, 72
destination: .byte 149, 6, 135, 199, 193, 180, 166, 184, 194, 6, 87, 154, 214, 48, 115, 173, 251, 157, 19, 243, 175, 12, 129, 205
