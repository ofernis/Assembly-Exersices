
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $47, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $19, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $25, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $222, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $143, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $104, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $245, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $170, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $160, %al
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
source: .byte 56, 98, 168, 255, 97, 115, 160, 100, 251, 149, 19, 0, 25, 9, 222, 45, 204, 205, 2, 91, 84, 97, 67, 2, 143, 168, 209, 162, 104, 245
destination: .byte 16, 96, 105, 47, 93, 38, 28, 105, 170, 160
