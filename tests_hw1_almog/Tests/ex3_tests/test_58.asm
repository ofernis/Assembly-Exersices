
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4282129479, 0(%rax)
    jne bad_exit

    cmpl $4191829364, 4(%rax)
    jne bad_exit

    cmpl $4025985165, 8(%rax)
    jne bad_exit

    cmpl $4007029561, 12(%rax)
    jne bad_exit

    cmpl $3962715078, 16(%rax)
    jne bad_exit

    cmpl $3961039616, 20(%rax)
    jne bad_exit

    cmpl $3820250080, 24(%rax)
    jne bad_exit

    cmpl $3807197772, 28(%rax)
    jne bad_exit

    cmpl $3649984432, 32(%rax)
    jne bad_exit

    cmpl $3472654208, 36(%rax)
    jne bad_exit

    cmpl $3175195541, 40(%rax)
    jne bad_exit

    cmpl $3133918170, 44(%rax)
    jne bad_exit

    cmpl $3100617611, 48(%rax)
    jne bad_exit

    cmpl $2606736790, 52(%rax)
    jne bad_exit

    cmpl $2503021039, 56(%rax)
    jne bad_exit

    cmpl $2351368141, 60(%rax)
    jne bad_exit

    cmpl $2254570167, 64(%rax)
    jne bad_exit

    cmpl $1781169740, 68(%rax)
    jne bad_exit

    cmpl $1763697234, 72(%rax)
    jne bad_exit

    cmpl $1430196201, 76(%rax)
    jne bad_exit

    cmpl $1426932189, 80(%rax)
    jne bad_exit

    cmpl $1394535831, 84(%rax)
    jne bad_exit

    cmpl $1234965631, 88(%rax)
    jne bad_exit

    cmpl $997014093, 92(%rax)
    jne bad_exit

    cmpl $947213221, 96(%rax)
    jne bad_exit

    cmpl $935517647, 100(%rax)
    jne bad_exit

    cmpl $769861689, 104(%rax)
    jne bad_exit

    cmpl $707665907, 108(%rax)
    jne bad_exit

    cmpl $633387013, 112(%rax)
    jne bad_exit

    cmpl $621343964, 116(%rax)
    jne bad_exit

    cmpl $538469231, 120(%rax)
    jne bad_exit

    cmpl $498438168, 124(%rax)
    jne bad_exit

    cmpl $464131785, 128(%rax)
    jne bad_exit

    cmpl $419895036, 132(%rax)
    jne bad_exit

    cmpl $401409957, 136(%rax)
    jne bad_exit

    cmpl $219394353, 140(%rax)
    jne bad_exit

    cmpl $0, 144(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4282129479, 4191829364, 4025985165, 4007029561, 3962715078, 3961039616, 3820250080, 3807197772, 3649984432, 3472654208, 3175195541, 3133918170, 3100617611, 2254570167, 1781169740, 1234965631, 997014093, 947213221, 935517647, 769861689, 707665907, 633387013, 621343964, 538469231, 498438168, 464131785, 419895036, 401409957, 219394353, 0
array2: .int 4191829364, 3820250080, 3175195541, 3133918170, 3133918170, 3100617611, 2606736790, 2503021039, 2351368141, 1781169740, 1763697234, 1430196201, 1426932189, 1394535831, 997014093, 707665907, 633387013, 538469231, 498438168, 498438168, 419895036, 219394353, 0
mergedArray: .zero 37
