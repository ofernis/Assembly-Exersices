
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $176, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $245, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $46, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $104, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $25, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $213, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $33, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $157, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $46, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $96, %al
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
source: .byte 160, 170, 199, 184, 146, 114, 51, 213, 214, 7, 176, 33, 160, 139, 203, 229, 157, 25, 19, 46, 218, 15, 96
destination: .byte 82, 15, 42, 152, 108, 122, 58, 28, 241, 118, 247, 167, 139, 138, 208, 34, 42, 185, 236, 114, 245, 46, 231, 36, 104, 9, 116, 25, 120
