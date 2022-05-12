
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3663916812, 0(%rax)
    jne bad_exit

    cmpl $3438923892, 4(%rax)
    jne bad_exit

    cmpl $3402429444, 8(%rax)
    jne bad_exit

    cmpl $3355241236, 12(%rax)
    jne bad_exit

    cmpl $3213702728, 16(%rax)
    jne bad_exit

    cmpl $2973153043, 20(%rax)
    jne bad_exit

    cmpl $2886484526, 24(%rax)
    jne bad_exit

    cmpl $2744376296, 28(%rax)
    jne bad_exit

    cmpl $2707920746, 32(%rax)
    jne bad_exit

    cmpl $2647079556, 36(%rax)
    jne bad_exit

    cmpl $2200760467, 40(%rax)
    jne bad_exit

    cmpl $1828525392, 44(%rax)
    jne bad_exit

    cmpl $1703465715, 48(%rax)
    jne bad_exit

    cmpl $1495204589, 52(%rax)
    jne bad_exit

    cmpl $813249422, 56(%rax)
    jne bad_exit

    cmpl $800420687, 60(%rax)
    jne bad_exit

    cmpl $567386982, 64(%rax)
    jne bad_exit

    cmpl $526017518, 68(%rax)
    jne bad_exit

    cmpl $288867299, 72(%rax)
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
array1: .int 3663916812, 3355241236, 2886484526, 2744376296, 2707920746, 2200760467, 1828525392, 1495204589, 813249422, 526017518, 288867299, 0
array2: .int 3438923892, 3402429444, 3355241236, 3213702728, 2973153043, 2886484526, 2647079556, 2200760467, 1703465715, 800420687, 567386982, 0
mergedArray: .zero 20
