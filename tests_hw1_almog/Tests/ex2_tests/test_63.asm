
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $120, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $50, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $120, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $168, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $54, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $104, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $156, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $58, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -5
source: .byte 32, 96, 14, 1, 30, 50, 24, 114, 83, 232, 76, 98, 120, 244, 115, 228, 206
destination: .byte 82, 168, 144, 167, 120, 54, 22, 165, 170, 251, 104, 156, 26, 58
