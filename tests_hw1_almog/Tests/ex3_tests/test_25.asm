
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3850966630, 0(%rax)
    jne bad_exit

    cmpl $3783252741, 4(%rax)
    jne bad_exit

    cmpl $3757987941, 8(%rax)
    jne bad_exit

    cmpl $3671824975, 12(%rax)
    jne bad_exit

    cmpl $3618453905, 16(%rax)
    jne bad_exit

    cmpl $3410629532, 20(%rax)
    jne bad_exit

    cmpl $3355091508, 24(%rax)
    jne bad_exit

    cmpl $3189147511, 28(%rax)
    jne bad_exit

    cmpl $2932901157, 32(%rax)
    jne bad_exit

    cmpl $2927508797, 36(%rax)
    jne bad_exit

    cmpl $2890090858, 40(%rax)
    jne bad_exit

    cmpl $2749206904, 44(%rax)
    jne bad_exit

    cmpl $2668632092, 48(%rax)
    jne bad_exit

    cmpl $2446655164, 52(%rax)
    jne bad_exit

    cmpl $2423309504, 56(%rax)
    jne bad_exit

    cmpl $2415733846, 60(%rax)
    jne bad_exit

    cmpl $2408292048, 64(%rax)
    jne bad_exit

    cmpl $2243747528, 68(%rax)
    jne bad_exit

    cmpl $2198035200, 72(%rax)
    jne bad_exit

    cmpl $2045390917, 76(%rax)
    jne bad_exit

    cmpl $1792098839, 80(%rax)
    jne bad_exit

    cmpl $1686247921, 84(%rax)
    jne bad_exit

    cmpl $1477750879, 88(%rax)
    jne bad_exit

    cmpl $1176175922, 92(%rax)
    jne bad_exit

    cmpl $1047087566, 96(%rax)
    jne bad_exit

    cmpl $482455090, 100(%rax)
    jne bad_exit

    cmpl $279120943, 104(%rax)
    jne bad_exit

    cmpl $240074781, 108(%rax)
    jne bad_exit

    cmpl $78332207, 112(%rax)
    jne bad_exit

    cmpl $0, 116(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3850966630, 3783252741, 3757987941, 3410629532, 3189147511, 2932901157, 2749206904, 2668632092, 2446655164, 2423309504, 2415733846, 2408292048, 2243747528, 1792098839, 1686247921, 1477750879, 1176175922, 1047087566, 482455090, 279120943, 240074781, 78332207, 0
array2: .int 3671824975, 3618453905, 3355091508, 3189147511, 2932901157, 2927508797, 2890090858, 2243747528, 2198035200, 2045390917, 0
mergedArray: .zero 30
