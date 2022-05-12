
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4293608888, 0(%rax)
    jne bad_exit

    cmpl $3897649184, 4(%rax)
    jne bad_exit

    cmpl $3619209302, 8(%rax)
    jne bad_exit

    cmpl $3549029158, 12(%rax)
    jne bad_exit

    cmpl $3457201823, 16(%rax)
    jne bad_exit

    cmpl $3451648260, 20(%rax)
    jne bad_exit

    cmpl $3405874198, 24(%rax)
    jne bad_exit

    cmpl $3391486171, 28(%rax)
    jne bad_exit

    cmpl $3138957153, 32(%rax)
    jne bad_exit

    cmpl $3011844181, 36(%rax)
    jne bad_exit

    cmpl $2859378616, 40(%rax)
    jne bad_exit

    cmpl $2442966802, 44(%rax)
    jne bad_exit

    cmpl $2380966186, 48(%rax)
    jne bad_exit

    cmpl $2166517989, 52(%rax)
    jne bad_exit

    cmpl $2165848751, 56(%rax)
    jne bad_exit

    cmpl $2150846093, 60(%rax)
    jne bad_exit

    cmpl $1691719127, 64(%rax)
    jne bad_exit

    cmpl $1421941549, 68(%rax)
    jne bad_exit

    cmpl $919675034, 72(%rax)
    jne bad_exit

    cmpl $876901370, 76(%rax)
    jne bad_exit

    cmpl $792294654, 80(%rax)
    jne bad_exit

    cmpl $733850215, 84(%rax)
    jne bad_exit

    cmpl $452074181, 88(%rax)
    jne bad_exit

    cmpl $306467195, 92(%rax)
    jne bad_exit

    cmpl $208767806, 96(%rax)
    jne bad_exit

    cmpl $101882292, 100(%rax)
    jne bad_exit

    cmpl $60515819, 104(%rax)
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
array1: .int 4293608888, 3897649184, 3619209302, 3549029158, 3457201823, 3451648260, 3405874198, 3391486171, 3138957153, 3011844181, 2859378616, 2442966802, 2380966186, 2166517989, 2165848751, 2150846093, 1691719127, 1421941549, 919675034, 876901370, 792294654, 733850215, 452074181, 306467195, 208767806, 101882292, 60515819, 0
array2: .int 3549029158, 2859378616, 2166517989, 1691719127, 876901370, 733850215, 452074181, 208767806, 101882292, 60515819, 60515819, 0
mergedArray: .zero 28
