
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $14, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $156, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $109, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $172, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $99, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $190, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $50, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $77, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 15
source: .byte 235, 149, 14, 218, 216, 125, 41, 50, 43, 156, 182, 109, 22, 208, 179, 77
destination: .byte 178, 73, 149, 206, 94, 64, 166, 237, 254, 128, 33, 17, 143, 112, 244, 19, 172, 255, 99, 191, 251, 13, 190, 36, 2, 20
