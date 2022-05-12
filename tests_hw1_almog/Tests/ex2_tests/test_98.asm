
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $58, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $124, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $54, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $125, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $51, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $38, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $58, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $124, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $187, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $54, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $217, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $172, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $254, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $224, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -11
source: .byte 146, 164, 42, 43, 80, 28, 245, 102, 115, 170, 97, 125, 102, 236, 57, 51, 168, 38, 85, 91, 17, 72, 57
destination: .byte 58, 85, 124, 187, 70, 180, 235, 53, 54, 90, 153, 93, 217, 172, 219, 97, 254, 224
