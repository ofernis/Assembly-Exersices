
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4162046036, 0(%rax)
    jne bad_exit

    cmpl $4072243298, 4(%rax)
    jne bad_exit

    cmpl $4049791824, 8(%rax)
    jne bad_exit

    cmpl $4017833430, 12(%rax)
    jne bad_exit

    cmpl $3939349444, 16(%rax)
    jne bad_exit

    cmpl $3866131938, 20(%rax)
    jne bad_exit

    cmpl $3736849690, 24(%rax)
    jne bad_exit

    cmpl $3718130221, 28(%rax)
    jne bad_exit

    cmpl $3516062306, 32(%rax)
    jne bad_exit

    cmpl $3514569601, 36(%rax)
    jne bad_exit

    cmpl $3239396725, 40(%rax)
    jne bad_exit

    cmpl $2938019009, 44(%rax)
    jne bad_exit

    cmpl $2925901021, 48(%rax)
    jne bad_exit

    cmpl $2671732039, 52(%rax)
    jne bad_exit

    cmpl $2553433395, 56(%rax)
    jne bad_exit

    cmpl $2475226389, 60(%rax)
    jne bad_exit

    cmpl $1983840772, 64(%rax)
    jne bad_exit

    cmpl $1819767789, 68(%rax)
    jne bad_exit

    cmpl $1779044153, 72(%rax)
    jne bad_exit

    cmpl $1637789739, 76(%rax)
    jne bad_exit

    cmpl $1563485292, 80(%rax)
    jne bad_exit

    cmpl $1494418311, 84(%rax)
    jne bad_exit

    cmpl $1379575063, 88(%rax)
    jne bad_exit

    cmpl $1064243708, 92(%rax)
    jne bad_exit

    cmpl $952268346, 96(%rax)
    jne bad_exit

    cmpl $889161472, 100(%rax)
    jne bad_exit

    cmpl $799031403, 104(%rax)
    jne bad_exit

    cmpl $642469135, 108(%rax)
    jne bad_exit

    cmpl $529532871, 112(%rax)
    jne bad_exit

    cmpl $154572790, 116(%rax)
    jne bad_exit

    cmpl $0, 120(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4049791824, 3939349444, 3736849690, 3718130221, 3514569601, 2938019009, 2925901021, 2553433395, 1983840772, 1779044153, 1563485292, 1494418311, 1379575063, 952268346, 529532871, 0
array2: .int 4162046036, 4072243298, 4017833430, 3939349444, 3866131938, 3736849690, 3516062306, 3514569601, 3239396725, 2925901021, 2671732039, 2553433395, 2475226389, 1819767789, 1779044153, 1637789739, 1563485292, 1379575063, 1379575063, 1379575063, 1379575063, 1064243708, 952268346, 889161472, 799031403, 642469135, 529532871, 529532871, 154572790, 0
mergedArray: .zero 31
