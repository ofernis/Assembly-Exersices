
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4110338003, 0(%rax)
    jne bad_exit

    cmpl $4022866309, 4(%rax)
    jne bad_exit

    cmpl $4022406090, 8(%rax)
    jne bad_exit

    cmpl $3962868647, 12(%rax)
    jne bad_exit

    cmpl $3866599193, 16(%rax)
    jne bad_exit

    cmpl $3811750428, 20(%rax)
    jne bad_exit

    cmpl $3734969000, 24(%rax)
    jne bad_exit

    cmpl $3613526156, 28(%rax)
    jne bad_exit

    cmpl $3493462463, 32(%rax)
    jne bad_exit

    cmpl $3255881643, 36(%rax)
    jne bad_exit

    cmpl $3097868548, 40(%rax)
    jne bad_exit

    cmpl $3035195158, 44(%rax)
    jne bad_exit

    cmpl $2998358440, 48(%rax)
    jne bad_exit

    cmpl $2557280616, 52(%rax)
    jne bad_exit

    cmpl $2521643375, 56(%rax)
    jne bad_exit

    cmpl $2436682920, 60(%rax)
    jne bad_exit

    cmpl $2406426367, 64(%rax)
    jne bad_exit

    cmpl $2378196315, 68(%rax)
    jne bad_exit

    cmpl $2292266668, 72(%rax)
    jne bad_exit

    cmpl $2177486499, 76(%rax)
    jne bad_exit

    cmpl $2086152421, 80(%rax)
    jne bad_exit

    cmpl $1735022669, 84(%rax)
    jne bad_exit

    cmpl $1715022097, 88(%rax)
    jne bad_exit

    cmpl $1610410863, 92(%rax)
    jne bad_exit

    cmpl $1473543304, 96(%rax)
    jne bad_exit

    cmpl $1418968010, 100(%rax)
    jne bad_exit

    cmpl $1141451569, 104(%rax)
    jne bad_exit

    cmpl $930155092, 108(%rax)
    jne bad_exit

    cmpl $924242082, 112(%rax)
    jne bad_exit

    cmpl $838296556, 116(%rax)
    jne bad_exit

    cmpl $798000537, 120(%rax)
    jne bad_exit

    cmpl $757805304, 124(%rax)
    jne bad_exit

    cmpl $750097868, 128(%rax)
    jne bad_exit

    cmpl $515179678, 132(%rax)
    jne bad_exit

    cmpl $338522548, 136(%rax)
    jne bad_exit

    cmpl $299112754, 140(%rax)
    jne bad_exit

    cmpl $258317964, 144(%rax)
    jne bad_exit

    cmpl $139864048, 148(%rax)
    jne bad_exit

    cmpl $74359756, 152(%rax)
    jne bad_exit

    cmpl $0, 156(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4110338003, 4022866309, 4022406090, 3962868647, 3866599193, 3811750428, 3734969000, 3493462463, 3255881643, 3035195158, 2998358440, 2378196315, 2177486499, 2086152421, 1735022669, 1715022097, 1610410863, 1473543304, 1418968010, 1141451569, 930155092, 924242082, 757805304, 750097868, 338522548, 258317964, 139864048, 74359756, 0
array2: .int 3866599193, 3811750428, 3734969000, 3613526156, 3097868548, 3035195158, 2998358440, 2557280616, 2521643375, 2436682920, 2406426367, 2292266668, 838296556, 798000537, 750097868, 515179678, 299112754, 258317964, 74359756, 74359756, 0
mergedArray: .zero 40
