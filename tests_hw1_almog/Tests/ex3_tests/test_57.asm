
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4215855007, 0(%rax)
    jne bad_exit

    cmpl $3984788901, 4(%rax)
    jne bad_exit

    cmpl $3740918396, 8(%rax)
    jne bad_exit

    cmpl $3701728485, 12(%rax)
    jne bad_exit

    cmpl $3398459844, 16(%rax)
    jne bad_exit

    cmpl $3039633562, 20(%rax)
    jne bad_exit

    cmpl $3010332419, 24(%rax)
    jne bad_exit

    cmpl $2970482349, 28(%rax)
    jne bad_exit

    cmpl $2928266979, 32(%rax)
    jne bad_exit

    cmpl $2337270206, 36(%rax)
    jne bad_exit

    cmpl $2187903228, 40(%rax)
    jne bad_exit

    cmpl $2024121373, 44(%rax)
    jne bad_exit

    cmpl $1999232510, 48(%rax)
    jne bad_exit

    cmpl $1893596550, 52(%rax)
    jne bad_exit

    cmpl $1673876939, 56(%rax)
    jne bad_exit

    cmpl $1591195550, 60(%rax)
    jne bad_exit

    cmpl $1278482630, 64(%rax)
    jne bad_exit

    cmpl $1249612950, 68(%rax)
    jne bad_exit

    cmpl $1217509398, 72(%rax)
    jne bad_exit

    cmpl $1156583525, 76(%rax)
    jne bad_exit

    cmpl $1085020970, 80(%rax)
    jne bad_exit

    cmpl $1029028058, 84(%rax)
    jne bad_exit

    cmpl $874977078, 88(%rax)
    jne bad_exit

    cmpl $795511215, 92(%rax)
    jne bad_exit

    cmpl $313268990, 96(%rax)
    jne bad_exit

    cmpl $240725748, 100(%rax)
    jne bad_exit

    cmpl $95908575, 104(%rax)
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
array1: .int 4215855007, 3740918396, 3039633562, 3010332419, 2970482349, 2928266979, 2187903228, 1893596550, 1278482630, 1156583525, 1029028058, 874977078, 795511215, 0
array2: .int 3984788901, 3701728485, 3398459844, 2337270206, 2024121373, 1999232510, 1673876939, 1591195550, 1249612950, 1217509398, 1085020970, 874977078, 313268990, 240725748, 95908575, 0
mergedArray: .zero 28
