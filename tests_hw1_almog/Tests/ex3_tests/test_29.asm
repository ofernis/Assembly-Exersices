
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4181750405, 0(%rax)
    jne bad_exit

    cmpl $4176147171, 4(%rax)
    jne bad_exit

    cmpl $4106357638, 8(%rax)
    jne bad_exit

    cmpl $3836372580, 12(%rax)
    jne bad_exit

    cmpl $3718871038, 16(%rax)
    jne bad_exit

    cmpl $3683287162, 20(%rax)
    jne bad_exit

    cmpl $3561785206, 24(%rax)
    jne bad_exit

    cmpl $3541063211, 28(%rax)
    jne bad_exit

    cmpl $3360113070, 32(%rax)
    jne bad_exit

    cmpl $2969467231, 36(%rax)
    jne bad_exit

    cmpl $2947494224, 40(%rax)
    jne bad_exit

    cmpl $2899594624, 44(%rax)
    jne bad_exit

    cmpl $2841905940, 48(%rax)
    jne bad_exit

    cmpl $2695245193, 52(%rax)
    jne bad_exit

    cmpl $2658865681, 56(%rax)
    jne bad_exit

    cmpl $2502273555, 60(%rax)
    jne bad_exit

    cmpl $2502106404, 64(%rax)
    jne bad_exit

    cmpl $1988974007, 68(%rax)
    jne bad_exit

    cmpl $1984434914, 72(%rax)
    jne bad_exit

    cmpl $1812340417, 76(%rax)
    jne bad_exit

    cmpl $1612329634, 80(%rax)
    jne bad_exit

    cmpl $1516233714, 84(%rax)
    jne bad_exit

    cmpl $1498290173, 88(%rax)
    jne bad_exit

    cmpl $1412277727, 92(%rax)
    jne bad_exit

    cmpl $1226639237, 96(%rax)
    jne bad_exit

    cmpl $1186401083, 100(%rax)
    jne bad_exit

    cmpl $1033907948, 104(%rax)
    jne bad_exit

    cmpl $819243031, 108(%rax)
    jne bad_exit

    cmpl $767179345, 112(%rax)
    jne bad_exit

    cmpl $762323821, 116(%rax)
    jne bad_exit

    cmpl $616923811, 120(%rax)
    jne bad_exit

    cmpl $553716256, 124(%rax)
    jne bad_exit

    cmpl $320845790, 128(%rax)
    jne bad_exit

    cmpl $247373079, 132(%rax)
    jne bad_exit

    cmpl $130087168, 136(%rax)
    jne bad_exit

    cmpl $0, 140(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3836372580, 3541063211, 3360113070, 2947494224, 2841905940, 2658865681, 2502273555, 2502106404, 1988974007, 1812340417, 1612329634, 1516233714, 1412277727, 1186401083, 819243031, 767179345, 762323821, 616923811, 553716256, 130087168, 0
array2: .int 4181750405, 4176147171, 4106357638, 3718871038, 3683287162, 3561785206, 3360113070, 2969467231, 2899594624, 2841905940, 2695245193, 2658865681, 2502273555, 1988974007, 1984434914, 1516233714, 1516233714, 1516233714, 1498290173, 1226639237, 1033907948, 767179345, 767179345, 320845790, 247373079, 130087168, 0
mergedArray: .zero 36
