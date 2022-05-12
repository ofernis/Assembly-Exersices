
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4018986318, 0(%rax)
    jne bad_exit

    cmpl $3914694038, 4(%rax)
    jne bad_exit

    cmpl $3870598369, 8(%rax)
    jne bad_exit

    cmpl $3134383054, 12(%rax)
    jne bad_exit

    cmpl $2962711177, 16(%rax)
    jne bad_exit

    cmpl $2678501841, 20(%rax)
    jne bad_exit

    cmpl $2559852759, 24(%rax)
    jne bad_exit

    cmpl $2484778421, 28(%rax)
    jne bad_exit

    cmpl $2392869500, 32(%rax)
    jne bad_exit

    cmpl $2232114399, 36(%rax)
    jne bad_exit

    cmpl $1994779493, 40(%rax)
    jne bad_exit

    cmpl $1909130648, 44(%rax)
    jne bad_exit

    cmpl $1882297499, 48(%rax)
    jne bad_exit

    cmpl $1532957878, 52(%rax)
    jne bad_exit

    cmpl $1377269042, 56(%rax)
    jne bad_exit

    cmpl $1175958103, 60(%rax)
    jne bad_exit

    cmpl $905937402, 64(%rax)
    jne bad_exit

    cmpl $549152331, 68(%rax)
    jne bad_exit

    cmpl $404760001, 72(%rax)
    jne bad_exit

    cmpl $302336645, 76(%rax)
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
array1: .int 4018986318, 3914694038, 3870598369, 3134383054, 2962711177, 2678501841, 2559852759, 2484778421, 2392869500, 2232114399, 1994779493, 1909130648, 1882297499, 1532957878, 1377269042, 1175958103, 905937402, 549152331, 404760001, 302336645, 0
array2: .int 3134383054, 2678501841, 2484778421, 2392869500, 2392869500, 2392869500, 1994779493, 1882297499, 1882297499, 905937402, 404760001, 0, 0, 0
mergedArray: .zero 21
