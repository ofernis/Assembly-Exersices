
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3955505661, 0(%rax)
    jne bad_exit

    cmpl $3817473934, 4(%rax)
    jne bad_exit

    cmpl $3665395533, 8(%rax)
    jne bad_exit

    cmpl $3463139234, 12(%rax)
    jne bad_exit

    cmpl $3460188254, 16(%rax)
    jne bad_exit

    cmpl $3304738403, 20(%rax)
    jne bad_exit

    cmpl $2981433831, 24(%rax)
    jne bad_exit

    cmpl $2947332542, 28(%rax)
    jne bad_exit

    cmpl $2626756125, 32(%rax)
    jne bad_exit

    cmpl $2372061187, 36(%rax)
    jne bad_exit

    cmpl $2340533197, 40(%rax)
    jne bad_exit

    cmpl $2255243617, 44(%rax)
    jne bad_exit

    cmpl $2175282915, 48(%rax)
    jne bad_exit

    cmpl $2073113247, 52(%rax)
    jne bad_exit

    cmpl $1965919887, 56(%rax)
    jne bad_exit

    cmpl $1871028224, 60(%rax)
    jne bad_exit

    cmpl $1522210001, 64(%rax)
    jne bad_exit

    cmpl $1374234681, 68(%rax)
    jne bad_exit

    cmpl $1159660266, 72(%rax)
    jne bad_exit

    cmpl $1016731889, 76(%rax)
    jne bad_exit

    cmpl $658012525, 80(%rax)
    jne bad_exit

    cmpl $404577330, 84(%rax)
    jne bad_exit

    cmpl $205129163, 88(%rax)
    jne bad_exit

    cmpl $176767440, 92(%rax)
    jne bad_exit

    cmpl $5951847, 96(%rax)
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
array1: .int 3955505661, 3817473934, 3460188254, 3304738403, 2947332542, 2340533197, 1871028224, 1522210001, 1016731889, 658012525, 404577330, 5951847, 0
array2: .int 3665395533, 3463139234, 3460188254, 2981433831, 2626756125, 2372061187, 2255243617, 2175282915, 2073113247, 1965919887, 1522210001, 1374234681, 1159660266, 205129163, 176767440, 0, 0
mergedArray: .zero 26
