
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4238085890, 0(%rax)
    jne bad_exit

    cmpl $4222356221, 4(%rax)
    jne bad_exit

    cmpl $4215570872, 8(%rax)
    jne bad_exit

    cmpl $4202436498, 12(%rax)
    jne bad_exit

    cmpl $4017689996, 16(%rax)
    jne bad_exit

    cmpl $4002518207, 20(%rax)
    jne bad_exit

    cmpl $3935063920, 24(%rax)
    jne bad_exit

    cmpl $3836220850, 28(%rax)
    jne bad_exit

    cmpl $3765285913, 32(%rax)
    jne bad_exit

    cmpl $3344061162, 36(%rax)
    jne bad_exit

    cmpl $3256648818, 40(%rax)
    jne bad_exit

    cmpl $3235855250, 44(%rax)
    jne bad_exit

    cmpl $3188207190, 48(%rax)
    jne bad_exit

    cmpl $3084876762, 52(%rax)
    jne bad_exit

    cmpl $2948542767, 56(%rax)
    jne bad_exit

    cmpl $2886102495, 60(%rax)
    jne bad_exit

    cmpl $2712874544, 64(%rax)
    jne bad_exit

    cmpl $2585567993, 68(%rax)
    jne bad_exit

    cmpl $2524283024, 72(%rax)
    jne bad_exit

    cmpl $2510906719, 76(%rax)
    jne bad_exit

    cmpl $2405824167, 80(%rax)
    jne bad_exit

    cmpl $2405431812, 84(%rax)
    jne bad_exit

    cmpl $2328322598, 88(%rax)
    jne bad_exit

    cmpl $2094125452, 92(%rax)
    jne bad_exit

    cmpl $1635204578, 96(%rax)
    jne bad_exit

    cmpl $1537398195, 100(%rax)
    jne bad_exit

    cmpl $1486152885, 104(%rax)
    jne bad_exit

    cmpl $1335765723, 108(%rax)
    jne bad_exit

    cmpl $1318077389, 112(%rax)
    jne bad_exit

    cmpl $1262447897, 116(%rax)
    jne bad_exit

    cmpl $1246995479, 120(%rax)
    jne bad_exit

    cmpl $1160641336, 124(%rax)
    jne bad_exit

    cmpl $846892821, 128(%rax)
    jne bad_exit

    cmpl $636712059, 132(%rax)
    jne bad_exit

    cmpl $476896061, 136(%rax)
    jne bad_exit

    cmpl $176606392, 140(%rax)
    jne bad_exit

    cmpl $140974560, 144(%rax)
    jne bad_exit

    cmpl $93674667, 148(%rax)
    jne bad_exit

    cmpl $23422586, 152(%rax)
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
array1: .int 4238085890, 4222356221, 4202436498, 4002518207, 3935063920, 3836220850, 3765285913, 3235855250, 3188207190, 2948542767, 2886102495, 2712874544, 2524283024, 2510906719, 2405431812, 1537398195, 1486152885, 1335765723, 1318077389, 1262447897, 1246995479, 1160641336, 846892821, 636712059, 476896061, 140974560, 0
array2: .int 4215570872, 4202436498, 4202436498, 4017689996, 4002518207, 3935063920, 3836220850, 3344061162, 3256648818, 3084876762, 2886102495, 2886102495, 2712874544, 2585567993, 2405824167, 2328322598, 2094125452, 1635204578, 1537398195, 1537398195, 1486152885, 1486152885, 176606392, 140974560, 93674667, 23422586, 0
mergedArray: .zero 40
