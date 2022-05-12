
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $195, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $66, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $195, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $37, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $66, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $69, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 15
source: .byte 43, 227, 199, 21, 127, 239, 236, 181, 37, 195, 141, 78, 66, 69
destination: .byte 114, 249, 20, 180, 84, 140, 101, 214, 126, 99, 87, 138, 110, 98, 159, 233, 195
