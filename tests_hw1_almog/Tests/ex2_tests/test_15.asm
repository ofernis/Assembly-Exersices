
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $14, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $229, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $202, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $231, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $14, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $4, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $221, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $229, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $82, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $24, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $13, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 11
source: .byte 28, 14, 4, 63, 221, 229, 228, 202, 82, 226, 110, 247, 237, 187, 24, 145, 141, 108, 16, 207, 13
destination: .byte 130, 93, 84, 41, 172, 255, 44, 18, 102, 241, 249, 221, 8, 97, 45, 38, 214, 231, 222, 112, 224, 42, 117
