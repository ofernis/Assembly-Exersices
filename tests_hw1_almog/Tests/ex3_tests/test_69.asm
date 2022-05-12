
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3116934303, 0(%rax)
    jne bad_exit

    cmpl $3048762764, 4(%rax)
    jne bad_exit

    cmpl $2752943498, 8(%rax)
    jne bad_exit

    cmpl $2584835699, 12(%rax)
    jne bad_exit

    cmpl $2584629561, 16(%rax)
    jne bad_exit

    cmpl $2475110719, 20(%rax)
    jne bad_exit

    cmpl $2424825774, 24(%rax)
    jne bad_exit

    cmpl $2186556241, 28(%rax)
    jne bad_exit

    cmpl $1973298373, 32(%rax)
    jne bad_exit

    cmpl $1849651996, 36(%rax)
    jne bad_exit

    cmpl $1637409802, 40(%rax)
    jne bad_exit

    cmpl $1272743868, 44(%rax)
    jne bad_exit

    cmpl $1243828633, 48(%rax)
    jne bad_exit

    cmpl $986015570, 52(%rax)
    jne bad_exit

    cmpl $918626770, 56(%rax)
    jne bad_exit

    cmpl $533744713, 60(%rax)
    jne bad_exit

    cmpl $419105041, 64(%rax)
    jne bad_exit

    cmpl $382240388, 68(%rax)
    jne bad_exit

    cmpl $335232811, 72(%rax)
    jne bad_exit

    cmpl $197019123, 76(%rax)
    jne bad_exit

    cmpl $0, 80(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3116934303, 3048762764, 2752943498, 2584835699, 2584629561, 2475110719, 2424825774, 2186556241, 1973298373, 1849651996, 1637409802, 1272743868, 1243828633, 986015570, 918626770, 533744713, 419105041, 382240388, 197019123, 0
array2: .int 2752943498, 2475110719, 2475110719, 2424825774, 2424825774, 2186556241, 1243828633, 533744713, 335232811, 0, 0, 0
mergedArray: .zero 21
