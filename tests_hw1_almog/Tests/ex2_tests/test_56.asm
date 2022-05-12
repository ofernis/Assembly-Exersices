
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $44, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $121, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $182, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $168, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $248, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $85, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $69, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $87, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $1, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $105, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $143, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $178, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $62, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $186, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $44, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $121, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $48, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $77, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $8, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $248, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $66, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $15, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $190, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $190, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $163, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -2
source: .byte 240, 14, 182, 85, 149, 168, 248, 85, 69, 160, 87, 1, 105, 71, 143, 178, 178, 62, 123, 155, 133, 186, 96
destination: .byte 44, 121, 48, 77, 8, 248, 6, 66, 173, 15, 190, 190, 163
