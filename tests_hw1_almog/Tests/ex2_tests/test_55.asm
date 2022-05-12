
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $191, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $252, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $77, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $143, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $77, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $217, %al
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
source: .byte 174, 48, 104, 218, 144, 16, 93, 25, 187, 153, 248, 113, 239, 254, 97, 40, 94, 61, 177, 143, 245, 225, 90, 78, 132, 179, 83
destination: .byte 140, 191, 252, 77, 125, 170, 229, 191, 215, 205, 217
