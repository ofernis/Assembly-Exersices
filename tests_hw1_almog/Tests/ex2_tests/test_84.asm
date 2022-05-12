
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $161, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $157, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $183, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $33, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $176, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $161, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $189, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -12
source: .byte 8, 165, 172, 147, 6, 59, 237, 81, 132, 153, 253, 130, 209, 167, 82, 53, 180, 246, 14, 157, 176, 74, 208, 26, 183, 33, 241, 239, 6
destination: .byte 202, 32, 110, 21, 181, 176, 68, 114, 31, 161, 131, 70, 189
