
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $156, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $113, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $190, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $156, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $252, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $54, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $7, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 18
source: .byte 197, 90, 167, 15, 16, 112, 31, 163, 156, 31, 227, 131, 194, 214, 55, 123, 113, 181, 252, 28, 216, 193, 54, 196, 7
destination: .byte 147, 245, 80, 150, 135, 248, 137, 81, 164, 191, 231, 246, 158, 66, 104, 215, 232, 215, 177, 0, 159, 26, 190, 51, 32, 153, 251
