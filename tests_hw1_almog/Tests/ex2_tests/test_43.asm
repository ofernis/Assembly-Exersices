
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $107, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $175, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $140, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $212, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $84, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $63, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $211, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $135, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $251, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $208, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $127, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $200, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $17, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $212, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $149, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $246, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $173, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $64, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $91, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $235, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $174, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $107, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $175, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $53, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $140, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $212, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $84, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $235, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $63, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $211, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $135, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $251, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $208, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $200, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $212, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $149, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $64, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $98, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $129, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $214, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long 25
source: .byte 165, 107, 175, 53, 140, 212, 84, 235, 63, 211, 135, 146, 251, 208, 130, 127, 200, 17, 212, 149, 61, 246, 226, 173, 64, 98, 129, 119, 214
destination: .byte 59, 245, 94, 63, 11, 253, 168, 91, 99, 248, 82, 17, 196, 192, 117, 202, 118, 135, 204, 105, 124, 247, 111, 64, 171, 91, 235, 57, 174, 160
