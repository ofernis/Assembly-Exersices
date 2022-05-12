
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $120, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $212, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $104, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $26, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $79, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $253, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $106, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $203, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $117, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $184, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $238, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $253, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $220, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $106, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $82, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $215, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -1
source: .byte 233, 0, 120, 159, 111, 41, 212, 104, 26, 69, 159, 6, 235, 121, 166, 79, 253, 60, 112, 95, 167, 106, 205, 167, 132, 203
destination: .byte 132, 117, 180, 184, 238, 253, 220, 150, 146, 106, 228, 82, 160, 47, 137, 215
