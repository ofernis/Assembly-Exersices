
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $77, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $59, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $36, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $175, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $204, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $58, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $30, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $56, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $164, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $77, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $20, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $89, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $33, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $58, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 26
source: .byte 77, 59, 20, 160, 121, 36, 89, 36, 255, 237, 184, 175, 193, 93, 82, 166, 204, 33, 206, 224, 58
destination: .byte 30, 32, 17, 193, 56, 116, 189, 157, 236, 126, 191, 92, 14, 22, 154, 28, 122, 227, 119, 26, 221, 245, 172, 121, 228, 62, 55, 235, 164
