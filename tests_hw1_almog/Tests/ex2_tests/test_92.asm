
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $100, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $21, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $170, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $216, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $116, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $106, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $172, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $74, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $34, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $122, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $1, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $76, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -7
source: .byte 100, 119, 166, 113, 255, 193, 115, 145, 67, 94, 247, 170, 70, 125, 229, 243, 158, 92, 0, 216, 176, 116, 45, 106, 172, 214, 74, 73, 152
destination: .byte 52, 100, 55, 215, 232, 89, 21, 16, 34, 235, 144, 122, 237, 28, 115, 62, 15, 237, 22, 1, 76
