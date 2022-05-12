
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $230, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $54, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $66, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $98, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $14, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $99, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $8, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $230, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $54, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $6, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 16
source: .byte 227, 8, 137, 233, 103, 45, 230, 54, 93, 55, 6
destination: .byte 66, 98, 101, 132, 75, 59, 79, 137, 164, 10, 105, 191, 244, 202, 113, 69, 189, 225, 192, 60, 14, 99, 184, 124, 48, 100, 41, 73, 41
