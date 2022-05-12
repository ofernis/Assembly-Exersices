
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $37, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $191, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $62, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $147, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $188, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $113, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $155, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $249, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $147, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $153, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -11
source: .byte 101, 32, 25, 246, 16, 144, 195, 132, 16, 225, 118, 184, 167, 131, 191, 9, 13, 62, 25, 179, 109, 162, 84, 147, 127, 250, 28
destination: .byte 188, 37, 135, 70, 113, 3, 73, 155, 13, 72, 242, 249, 19, 165, 147, 137, 111, 153
