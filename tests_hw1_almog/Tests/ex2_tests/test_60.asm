
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $238, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $30, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $66, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $62, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $179, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $231, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $183, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $184, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $3, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $220, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $84, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $100, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $29, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 21(%rcx), %al
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
num: .long -7
source: .byte 212, 20, 168, 225, 244, 135, 93, 226, 41, 32, 30, 177, 206, 144, 53, 66, 132, 155, 62, 133, 189, 179, 180, 132, 231, 224, 215, 183, 184, 209
destination: .byte 162, 238, 27, 208, 173, 3, 220, 184, 84, 235, 60, 20, 100, 4, 229, 105, 2, 124, 71, 29, 136, 227
