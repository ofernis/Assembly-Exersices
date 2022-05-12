
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $5, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $161, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $190, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $50, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $75, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $234, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $145, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $29, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -3
source: .byte 186, 111, 215, 149, 179, 59, 161, 190, 50, 75, 125, 109, 78, 102, 57, 12, 234, 137, 30, 153, 144, 15
destination: .byte 5, 234, 178, 116, 173, 145, 52, 240, 69, 127, 108, 123, 29
