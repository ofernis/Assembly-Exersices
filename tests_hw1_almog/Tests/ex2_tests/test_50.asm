
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $109, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $86, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $148, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $154, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $138, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $239, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $186, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $232, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $204, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $18, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $8, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $242, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $86, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $157, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $238, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $203, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 10
source: .byte 201, 18, 8, 0, 242, 221, 109, 86, 187, 73, 157, 255, 238, 110, 203
destination: .byte 236, 16, 172, 64, 135, 154, 189, 163, 228, 171, 33, 55, 78, 148, 216, 154, 205, 80, 94, 206, 138, 239, 224, 186, 232, 241, 41, 204, 202, 178
