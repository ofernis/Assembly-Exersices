
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $240, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $56, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $81, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $200, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $88, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $71, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 6
source: .byte 114, 240, 12, 180, 114, 139, 56, 220, 53, 81, 200, 7, 103, 88, 71
destination: .byte 215, 207, 92, 76, 77, 192, 39, 50, 21, 33, 75, 6, 170, 27, 192, 65
