
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4281344201, 0(%rax)
    jne bad_exit

    cmpl $4269803421, 4(%rax)
    jne bad_exit

    cmpl $3669098174, 8(%rax)
    jne bad_exit

    cmpl $3525983728, 12(%rax)
    jne bad_exit

    cmpl $3507727716, 16(%rax)
    jne bad_exit

    cmpl $3464333335, 20(%rax)
    jne bad_exit

    cmpl $3457154627, 24(%rax)
    jne bad_exit

    cmpl $3426610319, 28(%rax)
    jne bad_exit

    cmpl $3411636559, 32(%rax)
    jne bad_exit

    cmpl $3267799909, 36(%rax)
    jne bad_exit

    cmpl $3079868045, 40(%rax)
    jne bad_exit

    cmpl $3055665453, 44(%rax)
    jne bad_exit

    cmpl $2553494984, 48(%rax)
    jne bad_exit

    cmpl $2392810830, 52(%rax)
    jne bad_exit

    cmpl $2342147633, 56(%rax)
    jne bad_exit

    cmpl $2202670542, 60(%rax)
    jne bad_exit

    cmpl $1916901525, 64(%rax)
    jne bad_exit

    cmpl $1612038510, 68(%rax)
    jne bad_exit

    cmpl $1460797223, 72(%rax)
    jne bad_exit

    cmpl $950217264, 76(%rax)
    jne bad_exit

    cmpl $679455194, 80(%rax)
    jne bad_exit

    cmpl $417238476, 84(%rax)
    jne bad_exit

    cmpl $282895733, 88(%rax)
    jne bad_exit

    cmpl $194121035, 92(%rax)
    jne bad_exit

    cmpl $154633130, 96(%rax)
    jne bad_exit

    cmpl $148194388, 100(%rax)
    jne bad_exit

    cmpl $120616973, 104(%rax)
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
array1: .int 4281344201, 4269803421, 3669098174, 3525983728, 3507727716, 3464333335, 3457154627, 3426610319, 3411636559, 3267799909, 3079868045, 2392810830, 2202670542, 1916901525, 1612038510, 1460797223, 679455194, 417238476, 194121035, 148194388, 120616973, 0
array2: .int 4281344201, 3669098174, 3525983728, 3507727716, 3507727716, 3464333335, 3457154627, 3457154627, 3411636559, 3055665453, 2553494984, 2392810830, 2392810830, 2342147633, 1460797223, 1460797223, 950217264, 417238476, 282895733, 194121035, 154633130, 120616973, 0, 0, 0, 0
mergedArray: .zero 28
