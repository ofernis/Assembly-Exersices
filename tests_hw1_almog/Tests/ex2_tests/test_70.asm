
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $106, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $104, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $23, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $193, %al
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
source: .byte 142, 46, 227, 205, 48, 217, 239, 119, 106, 57, 218, 70, 79, 98, 11, 26, 59, 104, 23, 251, 152, 188, 179
destination: .byte 65, 248, 112, 73, 255, 69, 41, 173, 139, 100, 208, 165, 193
