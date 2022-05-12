
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4262449790, 0(%rax)
    jne bad_exit

    cmpl $3760123941, 4(%rax)
    jne bad_exit

    cmpl $3757620776, 8(%rax)
    jne bad_exit

    cmpl $3681261124, 12(%rax)
    jne bad_exit

    cmpl $3588333068, 16(%rax)
    jne bad_exit

    cmpl $3577540961, 20(%rax)
    jne bad_exit

    cmpl $2969689749, 24(%rax)
    jne bad_exit

    cmpl $2929992320, 28(%rax)
    jne bad_exit

    cmpl $2766381993, 32(%rax)
    jne bad_exit

    cmpl $2596019741, 36(%rax)
    jne bad_exit

    cmpl $2550317931, 40(%rax)
    jne bad_exit

    cmpl $2526284276, 44(%rax)
    jne bad_exit

    cmpl $2358798932, 48(%rax)
    jne bad_exit

    cmpl $2306747003, 52(%rax)
    jne bad_exit

    cmpl $2302736747, 56(%rax)
    jne bad_exit

    cmpl $2193668507, 60(%rax)
    jne bad_exit

    cmpl $1939444079, 64(%rax)
    jne bad_exit

    cmpl $1849046644, 68(%rax)
    jne bad_exit

    cmpl $1787416250, 72(%rax)
    jne bad_exit

    cmpl $1777934645, 76(%rax)
    jne bad_exit

    cmpl $1495269559, 80(%rax)
    jne bad_exit

    cmpl $1425208366, 84(%rax)
    jne bad_exit

    cmpl $1337340802, 88(%rax)
    jne bad_exit

    cmpl $1262760651, 92(%rax)
    jne bad_exit

    cmpl $961241245, 96(%rax)
    jne bad_exit

    cmpl $629034024, 100(%rax)
    jne bad_exit

    cmpl $447138595, 104(%rax)
    jne bad_exit

    cmpl $338574799, 108(%rax)
    jne bad_exit

    cmpl $306589356, 112(%rax)
    jne bad_exit

    cmpl $206321746, 116(%rax)
    jne bad_exit

    cmpl $111337158, 120(%rax)
    jne bad_exit

    cmpl $34970056, 124(%rax)
    jne bad_exit

    cmpl $0, 128(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3757620776, 3588333068, 3577540961, 2969689749, 2929992320, 2766381993, 2526284276, 2358798932, 2306747003, 2302736747, 2193668507, 1939444079, 1849046644, 1787416250, 1495269559, 1425208366, 1337340802, 1262760651, 629034024, 447138595, 338574799, 306589356, 34970056, 0
array2: .int 4262449790, 3760123941, 3681261124, 2596019741, 2550317931, 2526284276, 2306747003, 2306747003, 2302736747, 2193668507, 1939444079, 1939444079, 1787416250, 1777934645, 1425208366, 961241245, 629034024, 306589356, 206321746, 111337158, 0
mergedArray: .zero 33
