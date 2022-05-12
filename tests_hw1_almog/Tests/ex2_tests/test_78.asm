
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $18, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $4, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $143, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $67, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $147, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $66, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $37, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $51, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -4
source: .byte 232, 81, 13, 8, 26, 94, 169, 18, 20, 4, 139, 60, 253, 214, 35, 219, 205, 19, 247, 139, 182, 143
destination: .byte 94, 80, 117, 226, 20, 37, 69, 28, 67, 223, 147, 66, 252, 92, 37, 149, 51
