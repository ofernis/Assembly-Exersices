
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $199, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $198, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $223, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $115, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $102, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $194, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $155, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $183, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $124, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $171, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $240, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $194, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $240, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $65, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 24
source: .byte 17, 124, 132, 199, 111, 198, 171, 38, 223, 111, 115, 189, 154, 38, 240, 102, 19, 194, 240, 203, 135, 155, 107, 105, 65
destination: .byte 57, 246, 159, 192, 94, 54, 18, 48, 81, 244, 103, 16, 253, 93, 41, 9, 50, 214, 119, 187, 173, 153, 99, 139, 80, 208, 183, 154
