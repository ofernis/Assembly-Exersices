
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $230, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $198, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $192, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $83, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $150, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $217, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $193, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 26
source: .byte 192, 16, 241, 167, 167, 83, 150, 86, 136, 197, 217, 74, 163, 68, 209, 169, 97, 165, 178, 193
destination: .byte 24, 34, 43, 32, 230, 198, 233, 203, 120, 252, 222, 19, 35, 178, 37, 40, 242, 189, 192, 29, 103, 249, 254, 22, 125, 137, 184
