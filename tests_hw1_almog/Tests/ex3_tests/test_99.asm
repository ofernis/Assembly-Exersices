
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4259375782, 0(%rax)
    jne bad_exit

    cmpl $4257491502, 4(%rax)
    jne bad_exit

    cmpl $4216277885, 8(%rax)
    jne bad_exit

    cmpl $4012187182, 12(%rax)
    jne bad_exit

    cmpl $3959554857, 16(%rax)
    jne bad_exit

    cmpl $3792171250, 20(%rax)
    jne bad_exit

    cmpl $3787234847, 24(%rax)
    jne bad_exit

    cmpl $3684308163, 28(%rax)
    jne bad_exit

    cmpl $3463958767, 32(%rax)
    jne bad_exit

    cmpl $3072926597, 36(%rax)
    jne bad_exit

    cmpl $2908815358, 40(%rax)
    jne bad_exit

    cmpl $2802505374, 44(%rax)
    jne bad_exit

    cmpl $2734173042, 48(%rax)
    jne bad_exit

    cmpl $2610815055, 52(%rax)
    jne bad_exit

    cmpl $2472603789, 56(%rax)
    jne bad_exit

    cmpl $2441291939, 60(%rax)
    jne bad_exit

    cmpl $2247314969, 64(%rax)
    jne bad_exit

    cmpl $2239682032, 68(%rax)
    jne bad_exit

    cmpl $1943867323, 72(%rax)
    jne bad_exit

    cmpl $1783583037, 76(%rax)
    jne bad_exit

    cmpl $1722474240, 80(%rax)
    jne bad_exit

    cmpl $1694905243, 84(%rax)
    jne bad_exit

    cmpl $1393346827, 88(%rax)
    jne bad_exit

    cmpl $1275245740, 92(%rax)
    jne bad_exit

    cmpl $1183195413, 96(%rax)
    jne bad_exit

    cmpl $1000429437, 100(%rax)
    jne bad_exit

    cmpl $954238983, 104(%rax)
    jne bad_exit

    cmpl $930637388, 108(%rax)
    jne bad_exit

    cmpl $889985176, 112(%rax)
    jne bad_exit

    cmpl $784846864, 116(%rax)
    jne bad_exit

    cmpl $665102131, 120(%rax)
    jne bad_exit

    cmpl $399826466, 124(%rax)
    jne bad_exit

    cmpl $325988977, 128(%rax)
    jne bad_exit

    cmpl $288630957, 132(%rax)
    jne bad_exit

    cmpl $67765665, 136(%rax)
    jne bad_exit

    cmpl $0, 140(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4259375782, 4257491502, 3959554857, 3792171250, 3787234847, 3684308163, 3463958767, 3072926597, 2908815358, 2802505374, 2472603789, 2441291939, 2247314969, 2239682032, 1943867323, 1783583037, 1722474240, 1694905243, 1393346827, 1275245740, 1183195413, 1000429437, 954238983, 930637388, 889985176, 784846864, 325988977, 288630957, 67765665, 0
array2: .int 4259375782, 4216277885, 4012187182, 3787234847, 3463958767, 3463958767, 2802505374, 2734173042, 2610815055, 2247314969, 1943867323, 1183195413, 954238983, 665102131, 399826466, 0
mergedArray: .zero 36
