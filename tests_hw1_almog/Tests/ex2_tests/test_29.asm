
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $18, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $55, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $255, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $16, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $66, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $132, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $19, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $141, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $18, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $55, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $255, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $197, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $66, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $132, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $222, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $116, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $117, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 9
source: .byte 18, 55, 255, 197, 16, 66, 132, 93, 227, 222, 116, 117
destination: .byte 254, 9, 57, 29, 171, 128, 90, 58, 89, 19, 131, 141
