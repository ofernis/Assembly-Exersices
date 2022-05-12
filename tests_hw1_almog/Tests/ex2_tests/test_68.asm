
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $116, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $239, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $106, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $172, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $249, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $99, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $254, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $106, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $189, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -20
source: .byte 246, 4, 214, 135, 27, 95, 87, 18, 30, 56, 47, 129, 47, 51, 194, 236, 80, 179, 55, 254, 214, 199, 108, 172, 135, 249, 99, 196
destination: .byte 116, 72, 91, 254, 163, 174, 13, 38, 96, 36, 141, 61, 48, 115, 239, 117, 55, 106, 149, 38, 218, 193, 158, 72, 189
