
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4218506291, 0(%rax)
    jne bad_exit

    cmpl $4190109704, 4(%rax)
    jne bad_exit

    cmpl $4003006066, 8(%rax)
    jne bad_exit

    cmpl $3938586664, 12(%rax)
    jne bad_exit

    cmpl $3844075161, 16(%rax)
    jne bad_exit

    cmpl $3782292295, 20(%rax)
    jne bad_exit

    cmpl $3743743633, 24(%rax)
    jne bad_exit

    cmpl $3263470879, 28(%rax)
    jne bad_exit

    cmpl $3193189871, 32(%rax)
    jne bad_exit

    cmpl $3185197732, 36(%rax)
    jne bad_exit

    cmpl $3097027960, 40(%rax)
    jne bad_exit

    cmpl $3003364880, 44(%rax)
    jne bad_exit

    cmpl $2958782519, 48(%rax)
    jne bad_exit

    cmpl $2860006830, 52(%rax)
    jne bad_exit

    cmpl $2846040554, 56(%rax)
    jne bad_exit

    cmpl $2764588551, 60(%rax)
    jne bad_exit

    cmpl $2638059989, 64(%rax)
    jne bad_exit

    cmpl $2540338369, 68(%rax)
    jne bad_exit

    cmpl $2241920982, 72(%rax)
    jne bad_exit

    cmpl $2211977542, 76(%rax)
    jne bad_exit

    cmpl $2096829530, 80(%rax)
    jne bad_exit

    cmpl $2089451198, 84(%rax)
    jne bad_exit

    cmpl $1897744160, 88(%rax)
    jne bad_exit

    cmpl $1839157747, 92(%rax)
    jne bad_exit

    cmpl $1737725735, 96(%rax)
    jne bad_exit

    cmpl $1736245972, 100(%rax)
    jne bad_exit

    cmpl $1576363273, 104(%rax)
    jne bad_exit

    cmpl $1175575060, 108(%rax)
    jne bad_exit

    cmpl $943838664, 112(%rax)
    jne bad_exit

    cmpl $755677436, 116(%rax)
    jne bad_exit

    cmpl $745155886, 120(%rax)
    jne bad_exit

    cmpl $717809175, 124(%rax)
    jne bad_exit

    cmpl $588786783, 128(%rax)
    jne bad_exit

    cmpl $473870734, 132(%rax)
    jne bad_exit

    cmpl $444300119, 136(%rax)
    jne bad_exit

    cmpl $432477369, 140(%rax)
    jne bad_exit

    cmpl $148706311, 144(%rax)
    jne bad_exit

    cmpl $0, 148(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4003006066, 3938586664, 3844075161, 3263470879, 3193189871, 3185197732, 3003364880, 2958782519, 2860006830, 2846040554, 2764588551, 2638059989, 2540338369, 2241920982, 2211977542, 2096829530, 1897744160, 1839157747, 1737725735, 1576363273, 1175575060, 943838664, 755677436, 745155886, 588786783, 473870734, 432477369, 0
array2: .int 4218506291, 4190109704, 4003006066, 3844075161, 3844075161, 3782292295, 3743743633, 3193189871, 3097027960, 3003364880, 3003364880, 2958782519, 2958782519, 2860006830, 2860006830, 2764588551, 2241920982, 2241920982, 2089451198, 1737725735, 1736245972, 1576363273, 755677436, 755677436, 717809175, 444300119, 148706311, 0
mergedArray: .zero 38
