
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $244, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $92, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $129, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $87, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $109, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $21, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $198, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $11, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $113, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $151, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 20(%rcx), %al
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
num: .long -5
source: .byte 43, 156, 190, 45, 87, 15, 134, 92, 136, 148, 215, 78, 158, 209, 232, 198, 162, 70, 173, 108, 129, 49, 168, 24, 107, 96, 125, 235, 68
destination: .byte 87, 71, 109, 141, 244, 21, 198, 90, 11, 57, 12, 113, 6, 105, 203, 241, 243, 151, 72, 116, 29
