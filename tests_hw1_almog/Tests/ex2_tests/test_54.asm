
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $143, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $252, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $210, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $215, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $166, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $187, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $138, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $204, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $94, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $143, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $87, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $38, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $79, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $20, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $219, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -9
source: .byte 252, 74, 168, 146, 72, 95, 231, 228, 198, 160, 210, 15, 215, 166, 7, 187, 180, 119, 167, 254, 204, 138, 123, 220, 195, 94, 237
destination: .byte 57, 178, 204, 94, 70, 2, 143, 159, 252, 87, 85, 38, 165, 79, 171, 20, 219
