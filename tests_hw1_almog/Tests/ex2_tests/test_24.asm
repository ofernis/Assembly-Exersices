
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $112, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $126, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $225, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $134, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $65, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $234, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $205, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $81, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $195, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $54, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $83, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $236, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $222, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $126, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $230, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $68, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $206, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $6, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $148, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $46, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $0, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $123, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 7
source: .byte 236, 222, 140, 112, 93, 126, 53, 72, 230, 68, 206, 95, 6, 148, 46, 0, 130, 123
destination: .byte 139, 31, 25, 42, 141, 43, 156, 225, 134, 173, 158, 252, 216, 65, 234, 205, 81, 195, 54, 83, 90, 174
