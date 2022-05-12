
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4290737965, 0(%rax)
    jne bad_exit

    cmpl $4188526415, 4(%rax)
    jne bad_exit

    cmpl $4146891823, 8(%rax)
    jne bad_exit

    cmpl $3910566561, 12(%rax)
    jne bad_exit

    cmpl $3700676914, 16(%rax)
    jne bad_exit

    cmpl $3276646804, 20(%rax)
    jne bad_exit

    cmpl $3249942163, 24(%rax)
    jne bad_exit

    cmpl $2930653414, 28(%rax)
    jne bad_exit

    cmpl $2587456554, 32(%rax)
    jne bad_exit

    cmpl $2135869060, 36(%rax)
    jne bad_exit

    cmpl $1829774260, 40(%rax)
    jne bad_exit

    cmpl $1799969169, 44(%rax)
    jne bad_exit

    cmpl $1790318315, 48(%rax)
    jne bad_exit

    cmpl $1663063210, 52(%rax)
    jne bad_exit

    cmpl $1461239814, 56(%rax)
    jne bad_exit

    cmpl $1436492170, 60(%rax)
    jne bad_exit

    cmpl $799233305, 64(%rax)
    jne bad_exit

    cmpl $227794937, 68(%rax)
    jne bad_exit

    cmpl $146931914, 72(%rax)
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
array1: .int 4290737965, 4146891823, 3910566561, 3700676914, 3249942163, 2930653414, 2135869060, 1799969169, 1790318315, 1663063210, 1461239814, 799233305, 227794937, 146931914, 0
array2: .int 4188526415, 4146891823, 3910566561, 3276646804, 2587456554, 1829774260, 1790318315, 1436492170, 0, 0, 0
mergedArray: .zero 20
