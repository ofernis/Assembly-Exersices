
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4240621944, 0(%rax)
    jne bad_exit

    cmpl $4123879517, 4(%rax)
    jne bad_exit

    cmpl $3889618251, 8(%rax)
    jne bad_exit

    cmpl $3865365680, 12(%rax)
    jne bad_exit

    cmpl $3675553393, 16(%rax)
    jne bad_exit

    cmpl $3443162917, 20(%rax)
    jne bad_exit

    cmpl $3343053053, 24(%rax)
    jne bad_exit

    cmpl $3329413189, 28(%rax)
    jne bad_exit

    cmpl $3288099765, 32(%rax)
    jne bad_exit

    cmpl $3176046642, 36(%rax)
    jne bad_exit

    cmpl $3155629984, 40(%rax)
    jne bad_exit

    cmpl $3065397761, 44(%rax)
    jne bad_exit

    cmpl $2733721230, 48(%rax)
    jne bad_exit

    cmpl $2650579712, 52(%rax)
    jne bad_exit

    cmpl $2374428155, 56(%rax)
    jne bad_exit

    cmpl $2329618991, 60(%rax)
    jne bad_exit

    cmpl $1549937089, 64(%rax)
    jne bad_exit

    cmpl $1498267022, 68(%rax)
    jne bad_exit

    cmpl $1397569312, 72(%rax)
    jne bad_exit

    cmpl $1379272745, 76(%rax)
    jne bad_exit

    cmpl $1329229321, 80(%rax)
    jne bad_exit

    cmpl $1258207450, 84(%rax)
    jne bad_exit

    cmpl $1056617748, 88(%rax)
    jne bad_exit

    cmpl $937157539, 92(%rax)
    jne bad_exit

    cmpl $748825989, 96(%rax)
    jne bad_exit

    cmpl $230109522, 100(%rax)
    jne bad_exit

    cmpl $0, 104(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4240621944, 4123879517, 3889618251, 3443162917, 3288099765, 3176046642, 3155629984, 2733721230, 2374428155, 2329618991, 1549937089, 1397569312, 1258207450, 1056617748, 937157539, 230109522, 0
array2: .int 4240621944, 3889618251, 3889618251, 3865365680, 3675553393, 3343053053, 3329413189, 3288099765, 3065397761, 2650579712, 2374428155, 2374428155, 1498267022, 1397569312, 1379272745, 1329229321, 1258207450, 1056617748, 937157539, 748825989, 0
mergedArray: .zero 27
