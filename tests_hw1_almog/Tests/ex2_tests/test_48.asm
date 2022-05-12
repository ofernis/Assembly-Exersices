
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $114, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $45, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $85, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $254, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $1, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $228, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $155, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $219, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $105, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $118, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $108, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $244, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $178, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $114, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $45, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $57, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $254, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $15, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $1, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $155, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 24
source: .byte 114, 45, 57, 85, 254, 173, 15, 1, 93, 144, 61, 228, 155
destination: .byte 219, 237, 105, 62, 118, 241, 108, 244, 178, 96, 197, 12, 210, 91, 48, 91, 69, 191, 27, 221, 195, 109, 149, 113
