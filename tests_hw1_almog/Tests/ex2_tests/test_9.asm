
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $122, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $77, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $77, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $120, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $12, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 12
source: .byte 122, 170, 77, 95, 94, 177, 141, 216, 51, 221, 163, 120, 243, 245, 68, 158, 68, 245, 12
destination: .byte 100, 123, 228, 201, 160, 89, 202, 114, 145, 182, 125, 146, 235, 182, 243, 214, 150, 136, 236, 10, 105, 90, 40, 51, 86, 203
