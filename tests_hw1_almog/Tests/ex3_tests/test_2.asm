
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4268668824, 0(%rax)
    jne bad_exit

    cmpl $3914698306, 4(%rax)
    jne bad_exit

    cmpl $3905532249, 8(%rax)
    jne bad_exit

    cmpl $3810208898, 12(%rax)
    jne bad_exit

    cmpl $3803109121, 16(%rax)
    jne bad_exit

    cmpl $3781034314, 20(%rax)
    jne bad_exit

    cmpl $3762162508, 24(%rax)
    jne bad_exit

    cmpl $3721197945, 28(%rax)
    jne bad_exit

    cmpl $3163929312, 32(%rax)
    jne bad_exit

    cmpl $2635436995, 36(%rax)
    jne bad_exit

    cmpl $2541317680, 40(%rax)
    jne bad_exit

    cmpl $2432165722, 44(%rax)
    jne bad_exit

    cmpl $2049429638, 48(%rax)
    jne bad_exit

    cmpl $1776043912, 52(%rax)
    jne bad_exit

    cmpl $1587355942, 56(%rax)
    jne bad_exit

    cmpl $1569877181, 60(%rax)
    jne bad_exit

    cmpl $1390851274, 64(%rax)
    jne bad_exit

    cmpl $1078289417, 68(%rax)
    jne bad_exit

    cmpl $682341750, 72(%rax)
    jne bad_exit

    cmpl $344237648, 76(%rax)
    jne bad_exit

    cmpl $185701595, 80(%rax)
    jne bad_exit

    cmpl $0, 84(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4268668824, 3914698306, 3905532249, 3810208898, 3803109121, 3781034314, 3762162508, 3163929312, 2541317680, 2432165722, 2049429638, 1776043912, 1587355942, 1569877181, 1390851274, 1078289417, 344237648, 185701595, 0
array2: .int 4268668824, 3905532249, 3810208898, 3721197945, 2635436995, 2541317680, 2541317680, 2049429638, 1776043912, 1587355942, 682341750, 0
mergedArray: .zero 22
