
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $128, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $250, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $254, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $77, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $106, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $102, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $232, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -1
source: .byte 140, 201, 174, 195, 102, 159, 44, 163, 11, 121, 253, 7, 128, 250, 17, 40, 220, 236, 249, 135, 87, 26, 201, 139
destination: .byte 92, 35, 254, 70, 77, 6, 76, 20, 12, 205, 106, 238, 127, 102, 232
