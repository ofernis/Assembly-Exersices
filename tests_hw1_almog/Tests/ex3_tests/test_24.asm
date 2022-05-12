
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3828257990, 0(%rax)
    jne bad_exit

    cmpl $3704512204, 4(%rax)
    jne bad_exit

    cmpl $3454789137, 8(%rax)
    jne bad_exit

    cmpl $3277988329, 12(%rax)
    jne bad_exit

    cmpl $3214694088, 16(%rax)
    jne bad_exit

    cmpl $3158982303, 20(%rax)
    jne bad_exit

    cmpl $3032713982, 24(%rax)
    jne bad_exit

    cmpl $2986693226, 28(%rax)
    jne bad_exit

    cmpl $2497705762, 32(%rax)
    jne bad_exit

    cmpl $2455373342, 36(%rax)
    jne bad_exit

    cmpl $2410610088, 40(%rax)
    jne bad_exit

    cmpl $2187935023, 44(%rax)
    jne bad_exit

    cmpl $2145722859, 48(%rax)
    jne bad_exit

    cmpl $1932182238, 52(%rax)
    jne bad_exit

    cmpl $1422326244, 56(%rax)
    jne bad_exit

    cmpl $1116502985, 60(%rax)
    jne bad_exit

    cmpl $1100693887, 64(%rax)
    jne bad_exit

    cmpl $1072445924, 68(%rax)
    jne bad_exit

    cmpl $1048671676, 72(%rax)
    jne bad_exit

    cmpl $1035413894, 76(%rax)
    jne bad_exit

    cmpl $926494221, 80(%rax)
    jne bad_exit

    cmpl $668917415, 84(%rax)
    jne bad_exit

    cmpl $648418626, 88(%rax)
    jne bad_exit

    cmpl $384924104, 92(%rax)
    jne bad_exit

    cmpl $362906277, 96(%rax)
    jne bad_exit

    cmpl $259423334, 100(%rax)
    jne bad_exit

    cmpl $239286595, 104(%rax)
    jne bad_exit

    cmpl $143418234, 108(%rax)
    jne bad_exit

    cmpl $61783218, 112(%rax)
    jne bad_exit

    cmpl $29098802, 116(%rax)
    jne bad_exit

    cmpl $0, 120(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3828257990, 3704512204, 3454789137, 3277988329, 3158982303, 3032713982, 2986693226, 2455373342, 2410610088, 2145722859, 1932182238, 1422326244, 1116502985, 668917415, 384924104, 362906277, 239286595, 143418234, 61783218, 0
array2: .int 3704512204, 3704512204, 3704512204, 3704512204, 3277988329, 3214694088, 3158982303, 3158982303, 2986693226, 2497705762, 2187935023, 2145722859, 1932182238, 1100693887, 1072445924, 1048671676, 1035413894, 926494221, 668917415, 648418626, 259423334, 61783218, 29098802, 0, 0, 0
mergedArray: .zero 31
