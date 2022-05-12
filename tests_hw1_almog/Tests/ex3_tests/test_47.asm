
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4275455586, 0(%rax)
    jne bad_exit

    cmpl $3908250370, 4(%rax)
    jne bad_exit

    cmpl $3841753067, 8(%rax)
    jne bad_exit

    cmpl $3611974270, 12(%rax)
    jne bad_exit

    cmpl $3552561025, 16(%rax)
    jne bad_exit

    cmpl $3344292667, 20(%rax)
    jne bad_exit

    cmpl $3142721284, 24(%rax)
    jne bad_exit

    cmpl $3126204472, 28(%rax)
    jne bad_exit

    cmpl $2657414737, 32(%rax)
    jne bad_exit

    cmpl $2400241400, 36(%rax)
    jne bad_exit

    cmpl $2250788741, 40(%rax)
    jne bad_exit

    cmpl $1788485264, 44(%rax)
    jne bad_exit

    cmpl $1772683683, 48(%rax)
    jne bad_exit

    cmpl $1713869168, 52(%rax)
    jne bad_exit

    cmpl $1121465865, 56(%rax)
    jne bad_exit

    cmpl $967593273, 60(%rax)
    jne bad_exit

    cmpl $322405027, 64(%rax)
    jne bad_exit

    cmpl $0, 68(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3908250370, 3841753067, 3611974270, 3552561025, 3344292667, 3142721284, 3126204472, 2400241400, 1788485264, 1713869168, 1121465865, 967593273, 0
array2: .int 4275455586, 3908250370, 3908250370, 3841753067, 3611974270, 3552561025, 3552561025, 3344292667, 3126204472, 2657414737, 2400241400, 2250788741, 1788485264, 1772683683, 1121465865, 1121465865, 322405027, 0
mergedArray: .zero 18
