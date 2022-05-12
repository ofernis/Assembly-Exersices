
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $69, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $246, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $142, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $151, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $123, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $125, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $196, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $64, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $172, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $77, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $129, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $212, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $213, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $232, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $42, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $64, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $186, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $207, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 16
source: .byte 169, 51, 69, 232, 246, 44, 42, 142, 151, 79, 205, 123, 236, 125, 196, 64, 7, 14, 226, 186, 61, 0, 121, 63, 131, 207
destination: .byte 78, 38, 144, 88, 206, 33, 52, 159, 204, 131, 141, 229, 164, 82, 128, 153, 172, 6, 78, 4, 181, 62, 77, 129, 244, 22, 212, 213
