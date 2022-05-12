
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $67, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $169, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $153, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $43, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $49, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $240, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $182, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $175, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $133, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $215, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $23, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $156, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $67, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $166, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $67, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $169, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $153, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $159, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $43, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $240, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $209, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $150, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $199, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $228, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 12
source: .byte 67, 169, 153, 159, 237, 43, 49, 240, 209, 150, 182, 175, 199, 204, 228
destination: .byte 210, 139, 181, 85, 112, 152, 113, 81, 28, 157, 67, 71, 252, 133, 61, 215, 23, 5, 156, 44, 67, 252, 166, 227
