
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $116, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $39, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $206, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $151, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $106, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $60, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $186, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $12, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $143, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $42, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $54, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $14, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $68, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $24, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $212, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $192, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $116, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $90, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $91, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $39, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $59, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $188, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $150, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $223, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $219, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $100, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 6
source: .byte 116, 90, 91, 39, 206, 151, 59, 167, 141, 188, 2, 150, 223, 127, 87, 219, 253, 100
destination: .byte 110, 211, 60, 107, 37, 94, 106, 72, 228, 60, 61, 186, 12, 143, 90, 2, 180, 42, 54, 14, 68, 24, 132, 212, 38, 19, 192
