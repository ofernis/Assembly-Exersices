
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4278214802, 0(%rax)
    jne bad_exit

    cmpl $4147082432, 4(%rax)
    jne bad_exit

    cmpl $4042226312, 8(%rax)
    jne bad_exit

    cmpl $3958546620, 12(%rax)
    jne bad_exit

    cmpl $3941882545, 16(%rax)
    jne bad_exit

    cmpl $3820374401, 20(%rax)
    jne bad_exit

    cmpl $3765069575, 24(%rax)
    jne bad_exit

    cmpl $3748982232, 28(%rax)
    jne bad_exit

    cmpl $3478902616, 32(%rax)
    jne bad_exit

    cmpl $3343839327, 36(%rax)
    jne bad_exit

    cmpl $3247387447, 40(%rax)
    jne bad_exit

    cmpl $2978922640, 44(%rax)
    jne bad_exit

    cmpl $2906147458, 48(%rax)
    jne bad_exit

    cmpl $2546872206, 52(%rax)
    jne bad_exit

    cmpl $2506263188, 56(%rax)
    jne bad_exit

    cmpl $2499581598, 60(%rax)
    jne bad_exit

    cmpl $2477983993, 64(%rax)
    jne bad_exit

    cmpl $2331755586, 68(%rax)
    jne bad_exit

    cmpl $2300354446, 72(%rax)
    jne bad_exit

    cmpl $2277698440, 76(%rax)
    jne bad_exit

    cmpl $2159232590, 80(%rax)
    jne bad_exit

    cmpl $2094873792, 84(%rax)
    jne bad_exit

    cmpl $2047768881, 88(%rax)
    jne bad_exit

    cmpl $1836822857, 92(%rax)
    jne bad_exit

    cmpl $1565989630, 96(%rax)
    jne bad_exit

    cmpl $1559699149, 100(%rax)
    jne bad_exit

    cmpl $1525009272, 104(%rax)
    jne bad_exit

    cmpl $1326075226, 108(%rax)
    jne bad_exit

    cmpl $1255158224, 112(%rax)
    jne bad_exit

    cmpl $1216480642, 116(%rax)
    jne bad_exit

    cmpl $1188546795, 120(%rax)
    jne bad_exit

    cmpl $971523459, 124(%rax)
    jne bad_exit

    cmpl $859289790, 128(%rax)
    jne bad_exit

    cmpl $533481056, 132(%rax)
    jne bad_exit

    cmpl $414781886, 136(%rax)
    jne bad_exit

    cmpl $34216790, 140(%rax)
    jne bad_exit

    cmpl $0, 144(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4147082432, 4042226312, 3958546620, 3820374401, 3765069575, 3247387447, 2978922640, 2906147458, 2546872206, 2477983993, 2331755586, 2300354446, 2277698440, 2094873792, 1559699149, 1326075226, 1255158224, 1188546795, 971523459, 414781886, 0
array2: .int 4278214802, 3958546620, 3941882545, 3748982232, 3478902616, 3343839327, 3247387447, 2978922640, 2906147458, 2906147458, 2546872206, 2546872206, 2506263188, 2499581598, 2477983993, 2331755586, 2277698440, 2277698440, 2159232590, 2047768881, 1836822857, 1565989630, 1525009272, 1255158224, 1216480642, 859289790, 533481056, 34216790, 0
mergedArray: .zero 37
