
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $29, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $137, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $167, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $211, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $244, %al
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
source: .byte 138, 88, 57, 12, 15, 206, 233, 117, 146, 109, 192
destination: .byte 68, 100, 214, 29, 167, 108, 211, 215, 137, 187, 244
