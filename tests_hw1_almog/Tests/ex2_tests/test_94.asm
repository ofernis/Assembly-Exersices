
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $46, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $33, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $190, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $25, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $191, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $230, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $151, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -6
source: .byte 219, 6, 244, 137, 16, 42, 137, 171, 178, 5, 46, 152, 42, 127, 246, 33, 30, 194, 139, 100, 219, 158, 31, 119, 196, 190
destination: .byte 103, 219, 140, 25, 70, 215, 231, 149, 222, 10, 181, 231, 191, 234, 90, 248, 251, 230, 94, 121, 151
