
.global _start

.section .text

test_start:
    lea source, %rbx
    lea destination, %rcx

    
    movb 0(%rbx), %al
    cmp $227, %al
    jne bad_exit

    movb 1(%rbx), %al
    cmp $96, %al
    jne bad_exit

    movb 2(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 3(%rbx), %al
    cmp $32, %al
    jne bad_exit

    movb 4(%rbx), %al
    cmp $154, %al
    jne bad_exit

    movb 5(%rbx), %al
    cmp $17, %al
    jne bad_exit

    movb 6(%rbx), %al
    cmp $233, %al
    jne bad_exit

    movb 7(%rbx), %al
    cmp $226, %al
    jne bad_exit

    movb 8(%rbx), %al
    cmp $198, %al
    jne bad_exit

    movb 9(%rbx), %al
    cmp $144, %al
    jne bad_exit

    movb 10(%rbx), %al
    cmp $162, %al
    jne bad_exit

    movb 11(%rbx), %al
    cmp $71, %al
    jne bad_exit

    movb 12(%rbx), %al
    cmp $134, %al
    jne bad_exit

    movb 13(%rbx), %al
    cmp $246, %al
    jne bad_exit

    movb 14(%rbx), %al
    cmp $49, %al
    jne bad_exit

    movb 15(%rbx), %al
    cmp $163, %al
    jne bad_exit

    movb 16(%rbx), %al
    cmp $127, %al
    jne bad_exit

    movb 17(%rbx), %al
    cmp $61, %al
    jne bad_exit

    movb 18(%rbx), %al
    cmp $202, %al
    jne bad_exit

    movb 19(%rbx), %al
    cmp $160, %al
    jne bad_exit

    movb 20(%rbx), %al
    cmp $7, %al
    jne bad_exit

    movb 21(%rbx), %al
    cmp $113, %al
    jne bad_exit

    movb 22(%rbx), %al
    cmp $60, %al
    jne bad_exit

    movb 23(%rbx), %al
    cmp $97, %al
    jne bad_exit

    movb 24(%rbx), %al
    cmp $190, %al
    jne bad_exit

    movb 25(%rbx), %al
    cmp $1, %al
    jne bad_exit

    movb 26(%rbx), %al
    cmp $123, %al
    jne bad_exit

    movb 27(%rbx), %al
    cmp $186, %al
    jne bad_exit

    movb 28(%rbx), %al
    cmp $167, %al
    jne bad_exit

    movb 29(%rbx), %al
    cmp $228, %al
    jne bad_exit

    movb 0(%rcx), %al
    cmp $227, %al
    jne bad_exit

    movb 1(%rcx), %al
    cmp $96, %al
    jne bad_exit

    movb 2(%rcx), %al
    cmp $4, %al
    jne bad_exit

    movb 3(%rcx), %al
    cmp $28, %al
    jne bad_exit

    movb 4(%rcx), %al
    cmp $57, %al
    jne bad_exit

    movb 5(%rcx), %al
    cmp $47, %al
    jne bad_exit

    movb 6(%rcx), %al
    cmp $160, %al
    jne bad_exit

    movb 7(%rcx), %al
    cmp $222, %al
    jne bad_exit

    movb 8(%rcx), %al
    cmp $201, %al
    jne bad_exit

    movb 9(%rcx), %al
    cmp $131, %al
    jne bad_exit

    movb 10(%rcx), %al
    cmp $26, %al
    jne bad_exit

    movb 11(%rcx), %al
    cmp $53, %al
    jne bad_exit

    movb 12(%rcx), %al
    cmp $216, %al
    jne bad_exit

    movb 13(%rcx), %al
    cmp $241, %al
    jne bad_exit

    movb 14(%rcx), %al
    cmp $139, %al
    jne bad_exit

    movb 15(%rcx), %al
    cmp $92, %al
    jne bad_exit

    movb 16(%rcx), %al
    cmp $150, %al
    jne bad_exit

    movb 17(%rcx), %al
    cmp $1, %al
    jne bad_exit

    movb 18(%rcx), %al
    cmp $203, %al
    jne bad_exit

    movb 19(%rcx), %al
    cmp $89, %al
    jne bad_exit

    movb 20(%rcx), %al
    cmp $133, %al
    jne bad_exit

    movb 21(%rcx), %al
    cmp $71, %al
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
source: .byte 185, 38, 134, 32, 154, 17, 233, 226, 198, 144, 162, 71, 134, 246, 49, 163, 127, 61, 202, 160, 7, 113, 60, 97, 190, 1, 123, 186, 167, 228
destination: .byte 227, 96, 4, 28, 57, 47, 160, 222, 201, 131, 26, 53, 216, 241, 139, 92, 150, 1, 203, 89, 133, 71
