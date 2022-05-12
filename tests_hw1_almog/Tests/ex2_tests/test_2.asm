
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $176, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $122, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $142, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $14, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $230, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $7, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $88, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $161, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $161, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $230, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $120, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $191, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $120, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $88, %al
    jne bad_exit

    movb 20(%rbx), %al
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
num: .long 26
source: .byte 176, 122, 142, 224, 82, 14, 130, 230, 149, 36, 45, 120, 79, 7, 162, 232, 191, 120, 159, 88, 69
destination: .byte 43, 161, 161, 166, 227, 116, 138, 139, 212, 189, 192, 162, 183, 222, 70, 140, 165, 80, 39, 108, 67, 194, 68, 118, 156, 190
