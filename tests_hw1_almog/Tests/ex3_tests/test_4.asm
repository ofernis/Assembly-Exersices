
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4118390167, 0(%rax)
    jne bad_exit

    cmpl $4109266234, 4(%rax)
    jne bad_exit

    cmpl $4098070414, 8(%rax)
    jne bad_exit

    cmpl $4026468218, 12(%rax)
    jne bad_exit

    cmpl $3880980201, 16(%rax)
    jne bad_exit

    cmpl $3772875282, 20(%rax)
    jne bad_exit

    cmpl $3536506213, 24(%rax)
    jne bad_exit

    cmpl $2890521628, 28(%rax)
    jne bad_exit

    cmpl $2296751860, 32(%rax)
    jne bad_exit

    cmpl $2172837334, 36(%rax)
    jne bad_exit

    cmpl $1913009707, 40(%rax)
    jne bad_exit

    cmpl $1785922434, 44(%rax)
    jne bad_exit

    cmpl $1728782940, 48(%rax)
    jne bad_exit

    cmpl $1649970308, 52(%rax)
    jne bad_exit

    cmpl $1626718669, 56(%rax)
    jne bad_exit

    cmpl $1617285128, 60(%rax)
    jne bad_exit

    cmpl $1440849221, 64(%rax)
    jne bad_exit

    cmpl $1420111683, 68(%rax)
    jne bad_exit

    cmpl $1059933223, 72(%rax)
    jne bad_exit

    cmpl $1041492397, 76(%rax)
    jne bad_exit

    cmpl $897836457, 80(%rax)
    jne bad_exit

    cmpl $688248107, 84(%rax)
    jne bad_exit

    cmpl $459033223, 88(%rax)
    jne bad_exit

    cmpl $431638148, 92(%rax)
    jne bad_exit

    cmpl $321887592, 96(%rax)
    jne bad_exit

    cmpl $299429778, 100(%rax)
    jne bad_exit

    cmpl $19006527, 104(%rax)
    jne bad_exit

    cmpl $0, 108(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4118390167, 4109266234, 4098070414, 3772875282, 3536506213, 2296751860, 2172837334, 1913009707, 1785922434, 1728782940, 1649970308, 1440849221, 1059933223, 1041492397, 459033223, 431638148, 299429778, 19006527, 0
array2: .int 4026468218, 3880980201, 2890521628, 1626718669, 1617285128, 1420111683, 897836457, 688248107, 321887592, 299429778, 0
mergedArray: .zero 28
