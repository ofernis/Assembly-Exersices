
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $151, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $30, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $56, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $119, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $64, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $200, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $25, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $75, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $184, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 18
source: .byte 96, 117, 221, 159, 75, 83, 244, 73, 215, 187, 226, 114, 151, 73, 30, 80, 94, 134, 44, 131, 22, 189, 184
destination: .byte 97, 51, 128, 162, 52, 77, 90, 205, 224, 212, 44, 135, 16, 177, 172, 154, 121, 37, 219, 62, 105, 121, 56, 119, 20, 160, 64, 200, 25, 85
