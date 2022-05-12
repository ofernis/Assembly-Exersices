
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3835853311, 0(%rax)
    jne bad_exit

    cmpl $3777510477, 4(%rax)
    jne bad_exit

    cmpl $3717423188, 8(%rax)
    jne bad_exit

    cmpl $3623944401, 12(%rax)
    jne bad_exit

    cmpl $3488269465, 16(%rax)
    jne bad_exit

    cmpl $3487277371, 20(%rax)
    jne bad_exit

    cmpl $3374217178, 24(%rax)
    jne bad_exit

    cmpl $3365571339, 28(%rax)
    jne bad_exit

    cmpl $3134725436, 32(%rax)
    jne bad_exit

    cmpl $2979701858, 36(%rax)
    jne bad_exit

    cmpl $2848653248, 40(%rax)
    jne bad_exit

    cmpl $2809226380, 44(%rax)
    jne bad_exit

    cmpl $2666435186, 48(%rax)
    jne bad_exit

    cmpl $2363071714, 52(%rax)
    jne bad_exit

    cmpl $2104529320, 56(%rax)
    jne bad_exit

    cmpl $1899069088, 60(%rax)
    jne bad_exit

    cmpl $1840313934, 64(%rax)
    jne bad_exit

    cmpl $1784757580, 68(%rax)
    jne bad_exit

    cmpl $1694243180, 72(%rax)
    jne bad_exit

    cmpl $1686901548, 76(%rax)
    jne bad_exit

    cmpl $1287948873, 80(%rax)
    jne bad_exit

    cmpl $1242519329, 84(%rax)
    jne bad_exit

    cmpl $1057833684, 88(%rax)
    jne bad_exit

    cmpl $837443712, 92(%rax)
    jne bad_exit

    cmpl $505866267, 96(%rax)
    jne bad_exit

    cmpl $201480853, 100(%rax)
    jne bad_exit

    cmpl $174069176, 104(%rax)
    jne bad_exit

    cmpl $60889956, 108(%rax)
    jne bad_exit

    cmpl $0, 112(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3835853311, 3777510477, 3717423188, 3623944401, 3488269465, 3487277371, 3374217178, 3365571339, 3134725436, 2979701858, 2848653248, 2809226380, 2666435186, 2363071714, 2104529320, 1899069088, 1840313934, 1784757580, 1694243180, 1686901548, 1287948873, 1242519329, 1057833684, 837443712, 505866267, 201480853, 0
array2: .int 3623944401, 3487277371, 3374217178, 2848653248, 2848653248, 2363071714, 2363071714, 1840313934, 1784757580, 1694243180, 1242519329, 201480853, 174069176, 60889956, 0, 0
mergedArray: .zero 29
