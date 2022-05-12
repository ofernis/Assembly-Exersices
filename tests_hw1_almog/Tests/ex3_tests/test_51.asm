
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4099591749, 0(%rax)
    jne bad_exit

    cmpl $4044602885, 4(%rax)
    jne bad_exit

    cmpl $4035012617, 8(%rax)
    jne bad_exit

    cmpl $3990209981, 12(%rax)
    jne bad_exit

    cmpl $3749097871, 16(%rax)
    jne bad_exit

    cmpl $3672669901, 20(%rax)
    jne bad_exit

    cmpl $3401207168, 24(%rax)
    jne bad_exit

    cmpl $3296292382, 28(%rax)
    jne bad_exit

    cmpl $3191872580, 32(%rax)
    jne bad_exit

    cmpl $3083744205, 36(%rax)
    jne bad_exit

    cmpl $2501798481, 40(%rax)
    jne bad_exit

    cmpl $2488314287, 44(%rax)
    jne bad_exit

    cmpl $2392838673, 48(%rax)
    jne bad_exit

    cmpl $2306490025, 52(%rax)
    jne bad_exit

    cmpl $2140019930, 56(%rax)
    jne bad_exit

    cmpl $1774818990, 60(%rax)
    jne bad_exit

    cmpl $1699984802, 64(%rax)
    jne bad_exit

    cmpl $1640411608, 68(%rax)
    jne bad_exit

    cmpl $1493480356, 72(%rax)
    jne bad_exit

    cmpl $1383718955, 76(%rax)
    jne bad_exit

    cmpl $1337090988, 80(%rax)
    jne bad_exit

    cmpl $1297044412, 84(%rax)
    jne bad_exit

    cmpl $1234674813, 88(%rax)
    jne bad_exit

    cmpl $1019906674, 92(%rax)
    jne bad_exit

    cmpl $716726076, 96(%rax)
    jne bad_exit

    cmpl $618890663, 100(%rax)
    jne bad_exit

    cmpl $588686998, 104(%rax)
    jne bad_exit

    cmpl $533012989, 108(%rax)
    jne bad_exit

    cmpl $525739612, 112(%rax)
    jne bad_exit

    cmpl $456142084, 116(%rax)
    jne bad_exit

    cmpl $221899991, 120(%rax)
    jne bad_exit

    cmpl $0, 124(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4099591749, 4044602885, 4035012617, 3749097871, 3672669901, 3401207168, 3296292382, 3191872580, 3083744205, 2501798481, 2488314287, 2392838673, 2306490025, 2140019930, 1774818990, 1699984802, 1640411608, 1493480356, 1383718955, 1337090988, 1297044412, 1019906674, 716726076, 618890663, 588686998, 533012989, 525739612, 456142084, 221899991, 0
array2: .int 4099591749, 4035012617, 3990209981, 3401207168, 2501798481, 2488314287, 2392838673, 1699984802, 1297044412, 1234674813, 618890663, 533012989, 0
mergedArray: .zero 32
