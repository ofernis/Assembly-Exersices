
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $179, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $145, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $88, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $211, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $88, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $126, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $25, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 28
source: .byte 152, 179, 55, 145, 27, 36, 15, 88, 49, 5, 19, 144, 103, 114, 47, 44, 233, 167, 216, 126, 225, 209, 40, 228, 209, 80, 136, 166, 25
destination: .byte 48, 0, 154, 222, 198, 187, 103, 56, 129, 150, 220, 10, 98, 128, 139, 212, 217, 132, 198, 221, 69, 25, 29, 92, 196, 19, 230, 41, 94, 211
