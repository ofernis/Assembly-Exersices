
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $34, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $58, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $18, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $217, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $58, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $220, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $76, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -20
source: .byte 68, 188, 59, 128, 229, 136, 5, 87, 192, 27, 105, 251, 97, 174, 251, 139, 104, 187, 155, 34, 18, 217
destination: .byte 57, 248, 237, 20, 60, 110, 0, 38, 34, 225, 223, 236, 117, 58, 59, 60, 220, 239, 38, 76
