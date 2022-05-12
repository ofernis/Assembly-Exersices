
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $247, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $98, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -10
source: .byte 156, 66, 137, 181, 99, 122, 245, 36, 26, 47, 105, 92, 82, 65, 199, 96, 224, 227, 9, 74, 44, 110
destination: .byte 171, 247, 65, 144, 251, 234, 224, 52, 239, 203, 49, 235, 235, 17, 83, 79, 93, 98
