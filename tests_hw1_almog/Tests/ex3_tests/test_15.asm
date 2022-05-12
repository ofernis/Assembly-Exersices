
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4055581709, 0(%rax)
    jne bad_exit

    cmpl $3572895292, 4(%rax)
    jne bad_exit

    cmpl $3546481405, 8(%rax)
    jne bad_exit

    cmpl $3058776964, 12(%rax)
    jne bad_exit

    cmpl $2780710926, 16(%rax)
    jne bad_exit

    cmpl $2646110251, 20(%rax)
    jne bad_exit

    cmpl $2507873391, 24(%rax)
    jne bad_exit

    cmpl $2492488968, 28(%rax)
    jne bad_exit

    cmpl $2485009206, 32(%rax)
    jne bad_exit

    cmpl $2381587230, 36(%rax)
    jne bad_exit

    cmpl $2099725457, 40(%rax)
    jne bad_exit

    cmpl $1999151460, 44(%rax)
    jne bad_exit

    cmpl $1515079848, 48(%rax)
    jne bad_exit

    cmpl $1480989580, 52(%rax)
    jne bad_exit

    cmpl $1455499288, 56(%rax)
    jne bad_exit

    cmpl $1393979858, 60(%rax)
    jne bad_exit

    cmpl $1361990143, 64(%rax)
    jne bad_exit

    cmpl $1339152854, 68(%rax)
    jne bad_exit

    cmpl $771074129, 72(%rax)
    jne bad_exit

    cmpl $0, 76(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4055581709, 3572895292, 3546481405, 3058776964, 2780710926, 2646110251, 2507873391, 2492488968, 2485009206, 2381587230, 2099725457, 1999151460, 1515079848, 1480989580, 1455499288, 1393979858, 1339152854, 771074129, 0
array2: .int 4055581709, 4055581709, 4055581709, 3572895292, 2646110251, 2507873391, 2507873391, 2492488968, 2492488968, 2485009206, 1515079848, 1515079848, 1480989580, 1393979858, 1393979858, 1361990143, 771074129, 0
mergedArray: .zero 20
