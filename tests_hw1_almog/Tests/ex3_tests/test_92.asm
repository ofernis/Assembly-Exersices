
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3987695108, 0(%rax)
    jne bad_exit

    cmpl $3950420409, 4(%rax)
    jne bad_exit

    cmpl $3935835469, 8(%rax)
    jne bad_exit

    cmpl $3856266935, 12(%rax)
    jne bad_exit

    cmpl $3325025407, 16(%rax)
    jne bad_exit

    cmpl $3286329765, 20(%rax)
    jne bad_exit

    cmpl $2941073304, 24(%rax)
    jne bad_exit

    cmpl $2584807802, 28(%rax)
    jne bad_exit

    cmpl $2572243850, 32(%rax)
    jne bad_exit

    cmpl $2446772331, 36(%rax)
    jne bad_exit

    cmpl $2166251955, 40(%rax)
    jne bad_exit

    cmpl $2054103178, 44(%rax)
    jne bad_exit

    cmpl $1985251089, 48(%rax)
    jne bad_exit

    cmpl $1868838949, 52(%rax)
    jne bad_exit

    cmpl $1844689498, 56(%rax)
    jne bad_exit

    cmpl $1795208991, 60(%rax)
    jne bad_exit

    cmpl $1731161424, 64(%rax)
    jne bad_exit

    cmpl $1661871321, 68(%rax)
    jne bad_exit

    cmpl $1406633738, 72(%rax)
    jne bad_exit

    cmpl $1317088741, 76(%rax)
    jne bad_exit

    cmpl $1233748421, 80(%rax)
    jne bad_exit

    cmpl $999725698, 84(%rax)
    jne bad_exit

    cmpl $357224002, 88(%rax)
    jne bad_exit

    cmpl $193736894, 92(%rax)
    jne bad_exit

    cmpl $144183328, 96(%rax)
    jne bad_exit

    cmpl $0, 100(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3987695108, 3950420409, 3935835469, 3856266935, 3286329765, 2941073304, 2584807802, 2446772331, 2054103178, 1868838949, 1844689498, 1795208991, 1731161424, 1661871321, 1406633738, 357224002, 144183328, 0
array2: .int 3950420409, 3935835469, 3325025407, 2584807802, 2572243850, 2446772331, 2446772331, 2166251955, 1985251089, 1731161424, 1317088741, 1233748421, 999725698, 193736894, 144183328, 0, 0
mergedArray: .zero 26
