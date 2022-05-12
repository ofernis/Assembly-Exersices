
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $109, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $70, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $195, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $110, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $22, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $4, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $50, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $164, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $93, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $158, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $72, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $106, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $155, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $102, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $119, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $111, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $145, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $193, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $204, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $81, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $13, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $220, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $252, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $165, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $151, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $214, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $129, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $109, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $70, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $13, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $102, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $195, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $110, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $22, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $50, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $164, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $93, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $158, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $72, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $252, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $246, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $181, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $171, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $197, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $193, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $242, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $236, %al
    jne bad_exit

    movb 22(%rcx), %al
    cmp $233, %al
    jne bad_exit

    movb 23(%rcx), %al
    cmp $30, %al
    jne bad_exit

    movb 24(%rcx), %al
    cmp $226, %al
    jne bad_exit

    movb 25(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 26(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 27(%rcx), %al
    cmp $64, %al
    jne bad_exit

    movb 28(%rcx), %al
    cmp $138, %al
    jne bad_exit

    movb 29(%rcx), %al
    cmp $218, %al
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
num: .long -13
source: .byte 43, 105, 241, 11, 157, 174, 85, 150, 217, 31, 142, 52, 89, 106, 155, 102, 119, 127, 111, 145, 193, 204, 81, 13, 220, 252, 165, 151, 214, 129
destination: .byte 109, 70, 13, 102, 195, 110, 22, 4, 50, 164, 93, 158, 72, 252, 246, 181, 171, 197, 96, 193, 242, 236, 233, 30, 226, 96, 92, 64, 138, 218
