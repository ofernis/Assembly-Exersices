
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3933176657, 0(%rax)
    jne bad_exit

    cmpl $3668546684, 4(%rax)
    jne bad_exit

    cmpl $3587147968, 8(%rax)
    jne bad_exit

    cmpl $2023196278, 12(%rax)
    jne bad_exit

    cmpl $1936106449, 16(%rax)
    jne bad_exit

    cmpl $1896155184, 20(%rax)
    jne bad_exit

    cmpl $1012701616, 24(%rax)
    jne bad_exit

    cmpl $860202826, 28(%rax)
    jne bad_exit

    cmpl $809174266, 32(%rax)
    jne bad_exit

    cmpl $274382368, 36(%rax)
    jne bad_exit

    cmpl $175085039, 40(%rax)
    jne bad_exit

    cmpl $0, 44(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3933176657, 3668546684, 3587147968, 2023196278, 1936106449, 1896155184, 860202826, 809174266, 274382368, 175085039, 0
array2: .int 3668546684, 3668546684, 2023196278, 1936106449, 1936106449, 1896155184, 1012701616, 274382368, 175085039, 0, 0
mergedArray: .zero 12
