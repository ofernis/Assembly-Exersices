
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $104, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $54, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $84, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $98, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $175, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $104, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $54, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $185, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $119, %al
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
source: .byte 104, 54, 20, 59, 26, 134, 60, 192, 237, 160, 185, 57, 189, 123, 181, 239, 84, 98, 31, 202, 196, 248, 255, 175, 70, 166, 82, 165, 203, 119
destination: .byte 190, 103, 154, 113, 241, 34, 30, 249, 208, 79, 144, 112, 108, 15, 151, 101, 188, 55, 187, 28, 89, 53, 180, 227, 2, 248, 51, 132, 29, 208
