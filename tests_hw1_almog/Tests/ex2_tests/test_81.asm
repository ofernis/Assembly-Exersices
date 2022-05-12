
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $225, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $189, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $41, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $73, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $2, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $180, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $35, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $139, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $205, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $152, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $94, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $141, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $142, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $41, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $73, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $204, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $180, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $35, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $152, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $74, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $33, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $212, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $137, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $204, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $26, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -14
source: .byte 108, 230, 234, 144, 174, 10, 67, 87, 112, 36, 15, 31, 8, 133, 15, 107, 205, 152, 108, 111, 94, 60, 141, 142
destination: .byte 144, 225, 189, 103, 41, 224, 73, 2, 204, 180, 112, 35, 139, 152, 158, 74, 33, 233, 212, 137, 204, 26
