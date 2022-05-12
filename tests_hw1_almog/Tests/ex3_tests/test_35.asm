
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4257845488, 0(%rax)
    jne bad_exit

    cmpl $3973261706, 4(%rax)
    jne bad_exit

    cmpl $3931441354, 8(%rax)
    jne bad_exit

    cmpl $3650346680, 12(%rax)
    jne bad_exit

    cmpl $3581140061, 16(%rax)
    jne bad_exit

    cmpl $3274844277, 20(%rax)
    jne bad_exit

    cmpl $3036768164, 24(%rax)
    jne bad_exit

    cmpl $2855832220, 28(%rax)
    jne bad_exit

    cmpl $2679241676, 32(%rax)
    jne bad_exit

    cmpl $2537849711, 36(%rax)
    jne bad_exit

    cmpl $2252978122, 40(%rax)
    jne bad_exit

    cmpl $2152428631, 44(%rax)
    jne bad_exit

    cmpl $1642158264, 48(%rax)
    jne bad_exit

    cmpl $1552355911, 52(%rax)
    jne bad_exit

    cmpl $1468685733, 56(%rax)
    jne bad_exit

    cmpl $1288700239, 60(%rax)
    jne bad_exit

    cmpl $1166202568, 64(%rax)
    jne bad_exit

    cmpl $1089193329, 68(%rax)
    jne bad_exit

    cmpl $795671378, 72(%rax)
    jne bad_exit

    cmpl $750083037, 76(%rax)
    jne bad_exit

    cmpl $561332179, 80(%rax)
    jne bad_exit

    cmpl $379109931, 84(%rax)
    jne bad_exit

    cmpl $155794557, 88(%rax)
    jne bad_exit

    cmpl $0, 92(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4257845488, 3973261706, 3931441354, 3650346680, 3581140061, 2855832220, 2537849711, 2252978122, 1468685733, 1166202568, 1089193329, 795671378, 750083037, 561332179, 155794557, 0
array2: .int 3973261706, 3973261706, 3931441354, 3931441354, 3581140061, 3274844277, 3036768164, 2679241676, 2252978122, 2152428631, 1642158264, 1552355911, 1468685733, 1468685733, 1288700239, 795671378, 795671378, 561332179, 561332179, 379109931, 155794557, 0
mergedArray: .zero 24
