
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4230771911, 0(%rax)
    jne bad_exit

    cmpl $4008874117, 4(%rax)
    jne bad_exit

    cmpl $3935368161, 8(%rax)
    jne bad_exit

    cmpl $3791166701, 12(%rax)
    jne bad_exit

    cmpl $3526334869, 16(%rax)
    jne bad_exit

    cmpl $3495303151, 20(%rax)
    jne bad_exit

    cmpl $3475442072, 24(%rax)
    jne bad_exit

    cmpl $3286991250, 28(%rax)
    jne bad_exit

    cmpl $2826675962, 32(%rax)
    jne bad_exit

    cmpl $2770186034, 36(%rax)
    jne bad_exit

    cmpl $2397318471, 40(%rax)
    jne bad_exit

    cmpl $2311696717, 44(%rax)
    jne bad_exit

    cmpl $2296069540, 48(%rax)
    jne bad_exit

    cmpl $2271738154, 52(%rax)
    jne bad_exit

    cmpl $1792510337, 56(%rax)
    jne bad_exit

    cmpl $1503124362, 60(%rax)
    jne bad_exit

    cmpl $1436638997, 64(%rax)
    jne bad_exit

    cmpl $1330620340, 68(%rax)
    jne bad_exit

    cmpl $1315631662, 72(%rax)
    jne bad_exit

    cmpl $931449452, 76(%rax)
    jne bad_exit

    cmpl $829060408, 80(%rax)
    jne bad_exit

    cmpl $576452641, 84(%rax)
    jne bad_exit

    cmpl $489551822, 88(%rax)
    jne bad_exit

    cmpl $106140902, 92(%rax)
    jne bad_exit

    cmpl $100297703, 96(%rax)
    jne bad_exit

    cmpl $99149277, 100(%rax)
    jne bad_exit

    cmpl $42691421, 104(%rax)
    jne bad_exit

    cmpl $0, 108(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4230771911, 3791166701, 3526334869, 3495303151, 3475442072, 2826675962, 2770186034, 2397318471, 2311696717, 2296069540, 2271738154, 1503124362, 1436638997, 1330620340, 1315631662, 931449452, 829060408, 489551822, 106140902, 100297703, 99149277, 42691421, 0
array2: .int 4008874117, 3935368161, 3791166701, 3286991250, 2296069540, 2271738154, 1792510337, 1315631662, 931449452, 931449452, 931449452, 576452641, 489551822, 106140902, 106140902, 99149277, 99149277, 0, 0
mergedArray: .zero 28
