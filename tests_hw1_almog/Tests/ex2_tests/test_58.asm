
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $116, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $212, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $25, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $128, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $175, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $188, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -21
source: .byte 165, 249, 103, 108, 166, 78, 124, 5, 75, 106, 118, 248, 3, 108, 119, 194, 246, 232, 116, 85, 22, 47, 105, 212, 229, 83
destination: .byte 91, 199, 16, 209, 146, 68, 208, 237, 103, 70, 116, 209, 17, 134, 22, 25, 128, 112, 42, 192, 175, 73, 188
