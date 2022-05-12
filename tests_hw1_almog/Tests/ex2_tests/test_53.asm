
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $10, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $31, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $122, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $1, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $40, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $185, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $10, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $31, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $227, %al
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
source: .byte 5, 154, 248, 134, 54, 54, 119, 35, 6, 177, 122, 243, 43, 174, 125, 1, 244, 40, 44, 132, 72, 185, 123, 153
destination: .byte 61, 152, 224, 206, 10, 2, 31, 203, 213, 227
