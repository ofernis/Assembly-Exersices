
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $76, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $27, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $65, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $52, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $217, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $78, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $36, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $76, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $27, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $211, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $163, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $52, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $111, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $119, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $78, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $198, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $162, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $217, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -21
source: .byte 150, 213, 66, 17, 231, 48, 168, 153, 238, 28, 97, 120, 61, 50, 154, 20, 30, 180, 86, 178, 157, 173, 44, 247, 155, 19, 202, 36
destination: .byte 76, 27, 211, 12, 107, 65, 163, 139, 22, 52, 111, 193, 119, 132, 217, 12, 63, 12, 78, 136, 198, 162, 205, 150, 217
