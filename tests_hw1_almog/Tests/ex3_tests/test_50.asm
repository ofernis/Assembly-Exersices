
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4293399309, 0(%rax)
    jne bad_exit

    cmpl $4275996972, 4(%rax)
    jne bad_exit

    cmpl $4011568997, 8(%rax)
    jne bad_exit

    cmpl $3875320735, 12(%rax)
    jne bad_exit

    cmpl $3583344918, 16(%rax)
    jne bad_exit

    cmpl $3320271916, 20(%rax)
    jne bad_exit

    cmpl $3100610047, 24(%rax)
    jne bad_exit

    cmpl $2944947503, 28(%rax)
    jne bad_exit

    cmpl $2772737940, 32(%rax)
    jne bad_exit

    cmpl $2512779554, 36(%rax)
    jne bad_exit

    cmpl $2476340338, 40(%rax)
    jne bad_exit

    cmpl $2341415172, 44(%rax)
    jne bad_exit

    cmpl $2320602597, 48(%rax)
    jne bad_exit

    cmpl $2069606943, 52(%rax)
    jne bad_exit

    cmpl $2008087460, 56(%rax)
    jne bad_exit

    cmpl $1907387791, 60(%rax)
    jne bad_exit

    cmpl $1907309765, 64(%rax)
    jne bad_exit

    cmpl $1866226782, 68(%rax)
    jne bad_exit

    cmpl $1570696179, 72(%rax)
    jne bad_exit

    cmpl $1521833640, 76(%rax)
    jne bad_exit

    cmpl $1096192439, 80(%rax)
    jne bad_exit

    cmpl $884248231, 84(%rax)
    jne bad_exit

    cmpl $783594420, 88(%rax)
    jne bad_exit

    cmpl $682593331, 92(%rax)
    jne bad_exit

    cmpl $396836330, 96(%rax)
    jne bad_exit

    cmpl $5613422, 100(%rax)
    jne bad_exit

    cmpl $0, 104(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4275996972, 4011568997, 3583344918, 3320271916, 3100610047, 2944947503, 2512779554, 2476340338, 2341415172, 2320602597, 2069606943, 2008087460, 1907387791, 1907309765, 1866226782, 1570696179, 1521833640, 1096192439, 783594420, 682593331, 396836330, 5613422, 0
array2: .int 4293399309, 4275996972, 4011568997, 3875320735, 2944947503, 2772737940, 2476340338, 2476340338, 2476340338, 2476340338, 2069606943, 1570696179, 1096192439, 884248231, 783594420, 682593331, 396836330, 5613422, 0
mergedArray: .zero 27
