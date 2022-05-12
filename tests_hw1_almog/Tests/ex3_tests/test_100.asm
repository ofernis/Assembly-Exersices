
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4288972511, 0(%rax)
    jne bad_exit

    cmpl $4248829596, 4(%rax)
    jne bad_exit

    cmpl $4202586746, 8(%rax)
    jne bad_exit

    cmpl $3871452557, 12(%rax)
    jne bad_exit

    cmpl $3819211222, 16(%rax)
    jne bad_exit

    cmpl $3786564366, 20(%rax)
    jne bad_exit

    cmpl $3584093457, 24(%rax)
    jne bad_exit

    cmpl $3527992570, 28(%rax)
    jne bad_exit

    cmpl $3511541365, 32(%rax)
    jne bad_exit

    cmpl $3357654067, 36(%rax)
    jne bad_exit

    cmpl $3297800333, 40(%rax)
    jne bad_exit

    cmpl $3252194530, 44(%rax)
    jne bad_exit

    cmpl $2967378709, 48(%rax)
    jne bad_exit

    cmpl $2935002551, 52(%rax)
    jne bad_exit

    cmpl $2877331975, 56(%rax)
    jne bad_exit

    cmpl $2845771866, 60(%rax)
    jne bad_exit

    cmpl $2823557404, 64(%rax)
    jne bad_exit

    cmpl $2611371045, 68(%rax)
    jne bad_exit

    cmpl $2597094163, 72(%rax)
    jne bad_exit

    cmpl $2515724945, 76(%rax)
    jne bad_exit

    cmpl $2410465670, 80(%rax)
    jne bad_exit

    cmpl $2224273917, 84(%rax)
    jne bad_exit

    cmpl $1761928199, 88(%rax)
    jne bad_exit

    cmpl $1754821445, 92(%rax)
    jne bad_exit

    cmpl $1733799489, 96(%rax)
    jne bad_exit

    cmpl $1686712102, 100(%rax)
    jne bad_exit

    cmpl $1572580096, 104(%rax)
    jne bad_exit

    cmpl $1513327456, 108(%rax)
    jne bad_exit

    cmpl $1498141836, 112(%rax)
    jne bad_exit

    cmpl $1386385773, 116(%rax)
    jne bad_exit

    cmpl $1343271877, 120(%rax)
    jne bad_exit

    cmpl $1150813288, 124(%rax)
    jne bad_exit

    cmpl $1146062723, 128(%rax)
    jne bad_exit

    cmpl $1069498468, 132(%rax)
    jne bad_exit

    cmpl $958219444, 136(%rax)
    jne bad_exit

    cmpl $543404196, 140(%rax)
    jne bad_exit

    cmpl $503750709, 144(%rax)
    jne bad_exit

    cmpl $495240241, 148(%rax)
    jne bad_exit

    cmpl $489341131, 152(%rax)
    jne bad_exit

    cmpl $476615869, 156(%rax)
    jne bad_exit

    cmpl $253083802, 160(%rax)
    jne bad_exit

    cmpl $214573974, 164(%rax)
    jne bad_exit

    cmpl $204735770, 168(%rax)
    jne bad_exit

    cmpl $104061495, 172(%rax)
    jne bad_exit

    cmpl $101861627, 176(%rax)
    jne bad_exit

    cmpl $5082006, 180(%rax)
    jne bad_exit

    cmpl $0, 184(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3871452557, 3527992570, 2967378709, 2935002551, 2597094163, 2410465670, 1761928199, 1754821445, 1733799489, 1686712102, 1513327456, 1150813288, 1069498468, 958219444, 489341131, 214573974, 5082006, 0
array2: .int 4288972511, 4248829596, 4202586746, 3819211222, 3786564366, 3584093457, 3511541365, 3357654067, 3297800333, 3252194530, 2877331975, 2845771866, 2823557404, 2611371045, 2515724945, 2224273917, 1572580096, 1498141836, 1386385773, 1343271877, 1146062723, 1069498468, 543404196, 503750709, 495240241, 476615869, 253083802, 204735770, 104061495, 101861627, 0
mergedArray: .zero 47
