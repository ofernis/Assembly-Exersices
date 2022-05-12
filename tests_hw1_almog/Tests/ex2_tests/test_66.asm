
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $101, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $34, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $64, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $172, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $177, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $101, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $145, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $109, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $40, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $210, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $88, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $120, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $46, %al
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
source: .byte 175, 130, 180, 29, 113, 34, 65, 91, 113, 148, 95, 228, 64, 178, 154, 36, 16, 226, 172
destination: .byte 177, 68, 17, 101, 17, 145, 109, 40, 210, 255, 126, 88, 120, 218, 222, 46
