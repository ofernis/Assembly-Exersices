
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4255767151, 0(%rax)
    jne bad_exit

    cmpl $4242962796, 4(%rax)
    jne bad_exit

    cmpl $4184833828, 8(%rax)
    jne bad_exit

    cmpl $4022626244, 12(%rax)
    jne bad_exit

    cmpl $3748302398, 16(%rax)
    jne bad_exit

    cmpl $3449264238, 20(%rax)
    jne bad_exit

    cmpl $3365326665, 24(%rax)
    jne bad_exit

    cmpl $3267158546, 28(%rax)
    jne bad_exit

    cmpl $3150527187, 32(%rax)
    jne bad_exit

    cmpl $2947648545, 36(%rax)
    jne bad_exit

    cmpl $2709303603, 40(%rax)
    jne bad_exit

    cmpl $2339228351, 44(%rax)
    jne bad_exit

    cmpl $2250932227, 48(%rax)
    jne bad_exit

    cmpl $2122880457, 52(%rax)
    jne bad_exit

    cmpl $2095065795, 56(%rax)
    jne bad_exit

    cmpl $1821208124, 60(%rax)
    jne bad_exit

    cmpl $1778664006, 64(%rax)
    jne bad_exit

    cmpl $1737379741, 68(%rax)
    jne bad_exit

    cmpl $1138186023, 72(%rax)
    jne bad_exit

    cmpl $613119380, 76(%rax)
    jne bad_exit

    cmpl $488836497, 80(%rax)
    jne bad_exit

    cmpl $0, 84(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4255767151, 3449264238, 3365326665, 3150527187, 2709303603, 2339228351, 2250932227, 2095065795, 1821208124, 1778664006, 1138186023, 613119380, 488836497, 0
array2: .int 4242962796, 4184833828, 4022626244, 3748302398, 3267158546, 3150527187, 2947648545, 2122880457, 1778664006, 1778664006, 1737379741, 488836497, 0, 0
mergedArray: .zero 22
