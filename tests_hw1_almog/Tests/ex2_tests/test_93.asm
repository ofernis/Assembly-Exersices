
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $185, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $126, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $34, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $181, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $185, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $253, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $41, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -8
source: .byte 221, 108, 120, 142, 187, 240, 208, 111, 27, 9, 242, 34, 214, 201, 148, 145, 165, 152, 154, 76, 76, 181, 108, 155, 90, 221, 17, 140, 121
destination: .byte 69, 185, 253, 103, 126, 31, 55, 214, 227, 29, 65, 41
