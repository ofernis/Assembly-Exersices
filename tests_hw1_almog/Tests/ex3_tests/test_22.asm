
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4294534702, 0(%rax)
    jne bad_exit

    cmpl $4149799394, 4(%rax)
    jne bad_exit

    cmpl $4028199602, 8(%rax)
    jne bad_exit

    cmpl $3857276399, 12(%rax)
    jne bad_exit

    cmpl $3534595692, 16(%rax)
    jne bad_exit

    cmpl $3518341038, 20(%rax)
    jne bad_exit

    cmpl $3469707259, 24(%rax)
    jne bad_exit

    cmpl $3270454647, 28(%rax)
    jne bad_exit

    cmpl $3230867826, 32(%rax)
    jne bad_exit

    cmpl $3073273230, 36(%rax)
    jne bad_exit

    cmpl $3035772999, 40(%rax)
    jne bad_exit

    cmpl $2799876298, 44(%rax)
    jne bad_exit

    cmpl $2761697439, 48(%rax)
    jne bad_exit

    cmpl $2724347452, 52(%rax)
    jne bad_exit

    cmpl $2652903330, 56(%rax)
    jne bad_exit

    cmpl $2582481441, 60(%rax)
    jne bad_exit

    cmpl $2319101058, 64(%rax)
    jne bad_exit

    cmpl $2309433574, 68(%rax)
    jne bad_exit

    cmpl $2234854855, 72(%rax)
    jne bad_exit

    cmpl $2056847337, 76(%rax)
    jne bad_exit

    cmpl $1737240666, 80(%rax)
    jne bad_exit

    cmpl $1722278756, 84(%rax)
    jne bad_exit

    cmpl $1712643236, 88(%rax)
    jne bad_exit

    cmpl $1519719066, 92(%rax)
    jne bad_exit

    cmpl $1414145781, 96(%rax)
    jne bad_exit

    cmpl $1303806367, 100(%rax)
    jne bad_exit

    cmpl $1165604564, 104(%rax)
    jne bad_exit

    cmpl $991916281, 108(%rax)
    jne bad_exit

    cmpl $952222503, 112(%rax)
    jne bad_exit

    cmpl $374851066, 116(%rax)
    jne bad_exit

    cmpl $22216783, 120(%rax)
    jne bad_exit

    cmpl $17963903, 124(%rax)
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
array1: .int 4294534702, 4149799394, 4028199602, 3857276399, 3534595692, 3518341038, 3469707259, 3270454647, 3230867826, 3035772999, 2761697439, 2724347452, 2652903330, 2582481441, 2319101058, 2234854855, 1737240666, 1722278756, 1712643236, 1519719066, 1414145781, 991916281, 952222503, 374851066, 22216783, 17963903, 0
array2: .int 4149799394, 4028199602, 4028199602, 3534595692, 3518341038, 3469707259, 3469707259, 3230867826, 3073273230, 2799876298, 2652903330, 2652903330, 2652903330, 2319101058, 2309433574, 2056847337, 1303806367, 1165604564, 374851066, 22216783, 22216783, 17963903, 0
mergedArray: .zero 33
