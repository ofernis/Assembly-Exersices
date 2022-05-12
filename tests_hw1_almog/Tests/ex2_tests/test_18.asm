
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $221, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $56, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $212, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $87, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $97, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $58, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $145, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $214, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $98, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $71, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $201, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $77, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $39, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $28, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $177, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $3, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $222, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $69, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 0
source: .byte 201, 132, 77, 135, 103, 39, 28, 145, 69, 177, 13, 69, 138, 3, 222, 93, 69
destination: .byte 201, 48, 206, 38, 160, 2, 215, 221, 56, 61, 212, 44, 174, 87, 97, 58, 226, 145, 214, 141, 4, 98, 71
