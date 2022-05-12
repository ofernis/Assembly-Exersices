
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $56, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $186, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $81, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $222, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $103, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $224, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $108, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $115, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $46, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $10, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $164, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $213, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $56, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $186, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $119, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $81, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $211, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $224, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $0, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $32, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $10, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -10
source: .byte 233, 243, 109, 137, 176, 38, 223, 20, 64, 133, 115, 55, 145, 46, 10, 164, 17, 95, 213, 11, 110, 136, 61
destination: .byte 56, 186, 119, 81, 222, 13, 103, 211, 224, 108, 0, 112, 189, 126, 197, 61, 32, 10
