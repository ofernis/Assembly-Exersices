
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $249, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $9, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $120, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 9
source: .byte 83, 86, 189, 83, 83, 112, 146, 229, 173, 43, 24, 255, 120
destination: .byte 179, 77, 99, 113, 141, 68, 171, 77, 149, 213, 249, 169, 114, 9, 9, 208, 28, 10, 241, 80
