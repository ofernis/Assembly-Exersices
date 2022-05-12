
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rcx), %al
    cmp $136, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $165, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $130, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $113, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $62, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $80, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $218, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $146, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $237, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $144, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $209, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $204, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $61, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $5, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $189, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $103, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $90, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $200, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $6, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $95, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $2, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $142, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 0(%rbx), %al
    cmp $136, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $62, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $130, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $62, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $80, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $218, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $146, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $237, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $12, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $16, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $133, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $112, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $173, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $95, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $176, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $247, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $207, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $196, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $238, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $54, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $174, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $9, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $11, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $138, %al
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
source: .byte 136, 165, 62, 226, 130, 113, 62, 80, 218, 146, 237, 144, 12, 158, 16, 133, 112, 173, 95, 176, 165, 247, 207, 196, 238, 54, 174, 9, 11, 138
destination: .byte 240, 253, 142, 12, 57, 222, 77, 245, 90, 10, 222, 241, 209, 204, 61, 5, 189, 103, 197, 90, 110, 241, 200, 53, 6, 95, 181, 2, 142, 236
