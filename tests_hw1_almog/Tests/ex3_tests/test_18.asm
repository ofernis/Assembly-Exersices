
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4177673425, 0(%rax)
    jne bad_exit

    cmpl $3775232213, 4(%rax)
    jne bad_exit

    cmpl $3722578606, 8(%rax)
    jne bad_exit

    cmpl $3701643301, 12(%rax)
    jne bad_exit

    cmpl $3462910456, 16(%rax)
    jne bad_exit

    cmpl $3120757792, 20(%rax)
    jne bad_exit

    cmpl $3114996261, 24(%rax)
    jne bad_exit

    cmpl $2858193712, 28(%rax)
    jne bad_exit

    cmpl $2814583722, 32(%rax)
    jne bad_exit

    cmpl $2604511064, 36(%rax)
    jne bad_exit

    cmpl $2557238683, 40(%rax)
    jne bad_exit

    cmpl $2268708556, 44(%rax)
    jne bad_exit

    cmpl $2251759968, 48(%rax)
    jne bad_exit

    cmpl $2043332551, 52(%rax)
    jne bad_exit

    cmpl $1612053151, 56(%rax)
    jne bad_exit

    cmpl $918121088, 60(%rax)
    jne bad_exit

    cmpl $879158535, 64(%rax)
    jne bad_exit

    cmpl $851590633, 68(%rax)
    jne bad_exit

    cmpl $765078864, 72(%rax)
    jne bad_exit

    cmpl $646889895, 76(%rax)
    jne bad_exit

    cmpl $433398789, 80(%rax)
    jne bad_exit

    cmpl $295943050, 84(%rax)
    jne bad_exit

    cmpl $164942588, 88(%rax)
    jne bad_exit

    cmpl $0, 92(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3775232213, 3701643301, 3462910456, 3120757792, 2814583722, 2557238683, 2043332551, 1612053151, 851590633, 765078864, 646889895, 164942588, 0
array2: .int 4177673425, 3775232213, 3722578606, 3462910456, 3462910456, 3120757792, 3114996261, 2858193712, 2814583722, 2604511064, 2557238683, 2557238683, 2557238683, 2268708556, 2251759968, 918121088, 879158535, 851590633, 765078864, 433398789, 295943050, 0, 0
mergedArray: .zero 24
