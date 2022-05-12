
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $231, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $75, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $243, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $117, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $241, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $131, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $81, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $48, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $29, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $148, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $51, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $75, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $243, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $81, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $67, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $66, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -26
source: .byte 199, 208, 247, 172, 106, 115, 83, 177, 122, 210, 141, 9, 198, 132, 159, 37, 60, 97, 36, 35, 42, 183, 117, 75, 139, 233, 61, 41, 154
destination: .byte 160, 148, 51, 231, 44, 189, 3, 52, 75, 174, 243, 117, 241, 241, 131, 218, 174, 81, 48, 67, 110, 135, 248, 144, 29, 78, 66
