
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4276690817, 0(%rax)
    jne bad_exit

    cmpl $4150171515, 4(%rax)
    jne bad_exit

    cmpl $3831730441, 8(%rax)
    jne bad_exit

    cmpl $3795934289, 12(%rax)
    jne bad_exit

    cmpl $3593602479, 16(%rax)
    jne bad_exit

    cmpl $3543758824, 20(%rax)
    jne bad_exit

    cmpl $3347850363, 24(%rax)
    jne bad_exit

    cmpl $3159974963, 28(%rax)
    jne bad_exit

    cmpl $3143591309, 32(%rax)
    jne bad_exit

    cmpl $3069237240, 36(%rax)
    jne bad_exit

    cmpl $3036348596, 40(%rax)
    jne bad_exit

    cmpl $3027143766, 44(%rax)
    jne bad_exit

    cmpl $2961060952, 48(%rax)
    jne bad_exit

    cmpl $2540929338, 52(%rax)
    jne bad_exit

    cmpl $2307237284, 56(%rax)
    jne bad_exit

    cmpl $2173918716, 60(%rax)
    jne bad_exit

    cmpl $1529083999, 64(%rax)
    jne bad_exit

    cmpl $1377830566, 68(%rax)
    jne bad_exit

    cmpl $1153358646, 72(%rax)
    jne bad_exit

    cmpl $1106575452, 76(%rax)
    jne bad_exit

    cmpl $1030410549, 80(%rax)
    jne bad_exit

    cmpl $825368283, 84(%rax)
    jne bad_exit

    cmpl $740690443, 88(%rax)
    jne bad_exit

    cmpl $612521596, 92(%rax)
    jne bad_exit

    cmpl $544384032, 96(%rax)
    jne bad_exit

    cmpl $521128858, 100(%rax)
    jne bad_exit

    cmpl $508246259, 104(%rax)
    jne bad_exit

    cmpl $427970559, 108(%rax)
    jne bad_exit

    cmpl $0, 112(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4276690817, 3831730441, 3795934289, 3593602479, 3543758824, 3347850363, 3159974963, 3143591309, 3069237240, 3036348596, 3027143766, 2961060952, 2540929338, 2173918716, 1529083999, 1377830566, 1106575452, 825368283, 740690443, 544384032, 521128858, 508246259, 427970559, 0
array2: .int 4150171515, 3593602479, 3543758824, 3347850363, 3159974963, 3143591309, 2961060952, 2307237284, 1377830566, 1377830566, 1153358646, 1106575452, 1030410549, 825368283, 825368283, 825368283, 612521596, 521128858, 0
mergedArray: .zero 29
