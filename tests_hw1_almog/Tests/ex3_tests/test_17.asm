
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3753623769, 0(%rax)
    jne bad_exit

    cmpl $3656639670, 4(%rax)
    jne bad_exit

    cmpl $3350611025, 8(%rax)
    jne bad_exit

    cmpl $2819531675, 12(%rax)
    jne bad_exit

    cmpl $2662972518, 16(%rax)
    jne bad_exit

    cmpl $2317811672, 20(%rax)
    jne bad_exit

    cmpl $2051582328, 24(%rax)
    jne bad_exit

    cmpl $1991366369, 28(%rax)
    jne bad_exit

    cmpl $1351967913, 32(%rax)
    jne bad_exit

    cmpl $1112612716, 36(%rax)
    jne bad_exit

    cmpl $1097368457, 40(%rax)
    jne bad_exit

    cmpl $881926557, 44(%rax)
    jne bad_exit

    cmpl $626936078, 48(%rax)
    jne bad_exit

    cmpl $613181877, 52(%rax)
    jne bad_exit

    cmpl $503643247, 56(%rax)
    jne bad_exit

    cmpl $0, 60(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3656639670, 3350611025, 2819531675, 2662972518, 2317811672, 2051582328, 1991366369, 1351967913, 1112612716, 1097368457, 881926557, 626936078, 613181877, 503643247, 0
array2: .int 3753623769, 3656639670, 3350611025, 2819531675, 2662972518, 2051582328, 1991366369, 1351967913, 1112612716, 613181877, 503643247, 0
mergedArray: .zero 16
