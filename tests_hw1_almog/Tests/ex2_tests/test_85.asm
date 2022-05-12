
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $10, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $185, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $176, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $148, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $26, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -18
source: .byte 219, 109, 169, 169, 19, 198, 252, 69, 0, 13, 216, 3, 197, 145, 65, 54, 101, 35, 97, 198, 233, 165, 133, 22, 227, 16, 117, 249, 148
destination: .byte 48, 65, 100, 63, 55, 139, 187, 144, 176, 61, 10, 165, 95, 243, 203, 185, 90, 16, 149, 238, 196, 167, 228, 252, 148, 26
