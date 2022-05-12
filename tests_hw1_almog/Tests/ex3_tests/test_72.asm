
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4249593524, 0(%rax)
    jne bad_exit

    cmpl $4160521391, 4(%rax)
    jne bad_exit

    cmpl $4160138198, 8(%rax)
    jne bad_exit

    cmpl $4142372506, 12(%rax)
    jne bad_exit

    cmpl $3787740889, 16(%rax)
    jne bad_exit

    cmpl $3730835297, 20(%rax)
    jne bad_exit

    cmpl $3719924590, 24(%rax)
    jne bad_exit

    cmpl $3440559840, 28(%rax)
    jne bad_exit

    cmpl $3352779958, 32(%rax)
    jne bad_exit

    cmpl $2757713255, 36(%rax)
    jne bad_exit

    cmpl $2733655226, 40(%rax)
    jne bad_exit

    cmpl $2716689608, 44(%rax)
    jne bad_exit

    cmpl $2436295044, 48(%rax)
    jne bad_exit

    cmpl $2422850912, 52(%rax)
    jne bad_exit

    cmpl $2409009023, 56(%rax)
    jne bad_exit

    cmpl $2403868283, 60(%rax)
    jne bad_exit

    cmpl $2222638786, 64(%rax)
    jne bad_exit

    cmpl $2088647576, 68(%rax)
    jne bad_exit

    cmpl $2075189322, 72(%rax)
    jne bad_exit

    cmpl $1933615228, 76(%rax)
    jne bad_exit

    cmpl $1915756450, 80(%rax)
    jne bad_exit

    cmpl $1915521750, 84(%rax)
    jne bad_exit

    cmpl $1849656919, 88(%rax)
    jne bad_exit

    cmpl $1841343584, 92(%rax)
    jne bad_exit

    cmpl $1717301700, 96(%rax)
    jne bad_exit

    cmpl $1662896470, 100(%rax)
    jne bad_exit

    cmpl $1548084418, 104(%rax)
    jne bad_exit

    cmpl $1254867628, 108(%rax)
    jne bad_exit

    cmpl $703474302, 112(%rax)
    jne bad_exit

    cmpl $696346536, 116(%rax)
    jne bad_exit

    cmpl $526587355, 120(%rax)
    jne bad_exit

    cmpl $495150202, 124(%rax)
    jne bad_exit

    cmpl $411468328, 128(%rax)
    jne bad_exit

    cmpl $402280220, 132(%rax)
    jne bad_exit

    cmpl $25249496, 136(%rax)
    jne bad_exit

    cmpl $0, 140(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4160138198, 4142372506, 3352779958, 2733655226, 2436295044, 2422850912, 2409009023, 2075189322, 1933615228, 1717301700, 1662896470, 1254867628, 696346536, 495150202, 411468328, 0
array2: .int 4249593524, 4160521391, 3787740889, 3730835297, 3719924590, 3440559840, 3352779958, 2757713255, 2716689608, 2403868283, 2222638786, 2088647576, 1915756450, 1915521750, 1849656919, 1841343584, 1548084418, 703474302, 526587355, 495150202, 402280220, 25249496, 0
mergedArray: .zero 36
