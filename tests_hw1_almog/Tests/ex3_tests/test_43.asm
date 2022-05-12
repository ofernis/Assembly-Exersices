
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4290644952, 0(%rax)
    jne bad_exit

    cmpl $4138859657, 4(%rax)
    jne bad_exit

    cmpl $4016763490, 8(%rax)
    jne bad_exit

    cmpl $3862615142, 12(%rax)
    jne bad_exit

    cmpl $3843587682, 16(%rax)
    jne bad_exit

    cmpl $3780737508, 20(%rax)
    jne bad_exit

    cmpl $3548594367, 24(%rax)
    jne bad_exit

    cmpl $3528084192, 28(%rax)
    jne bad_exit

    cmpl $3096657235, 32(%rax)
    jne bad_exit

    cmpl $2643843805, 36(%rax)
    jne bad_exit

    cmpl $2579423960, 40(%rax)
    jne bad_exit

    cmpl $2253886537, 44(%rax)
    jne bad_exit

    cmpl $2235942892, 48(%rax)
    jne bad_exit

    cmpl $2131531041, 52(%rax)
    jne bad_exit

    cmpl $1908021167, 56(%rax)
    jne bad_exit

    cmpl $1618458874, 60(%rax)
    jne bad_exit

    cmpl $1331428097, 64(%rax)
    jne bad_exit

    cmpl $1190110638, 68(%rax)
    jne bad_exit

    cmpl $1108689180, 72(%rax)
    jne bad_exit

    cmpl $1013888311, 76(%rax)
    jne bad_exit

    cmpl $900830503, 80(%rax)
    jne bad_exit

    cmpl $808004773, 84(%rax)
    jne bad_exit

    cmpl $758927364, 88(%rax)
    jne bad_exit

    cmpl $594791716, 92(%rax)
    jne bad_exit

    cmpl $537153788, 96(%rax)
    jne bad_exit

    cmpl $0, 100(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4290644952, 4016763490, 3862615142, 3780737508, 3548594367, 3528084192, 3096657235, 2643843805, 2579423960, 2253886537, 2235942892, 2131531041, 1908021167, 1618458874, 1331428097, 1190110638, 1108689180, 1013888311, 900830503, 808004773, 594791716, 0
array2: .int 4290644952, 4290644952, 4138859657, 3862615142, 3843587682, 2643843805, 1190110638, 1013888311, 808004773, 758927364, 594791716, 594791716, 537153788, 0
mergedArray: .zero 26
