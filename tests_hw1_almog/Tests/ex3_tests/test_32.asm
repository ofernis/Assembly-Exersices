
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4269888019, 0(%rax)
    jne bad_exit

    cmpl $4248970907, 4(%rax)
    jne bad_exit

    cmpl $3972240393, 8(%rax)
    jne bad_exit

    cmpl $3884223107, 12(%rax)
    jne bad_exit

    cmpl $3608183792, 16(%rax)
    jne bad_exit

    cmpl $3516474589, 20(%rax)
    jne bad_exit

    cmpl $3286372475, 24(%rax)
    jne bad_exit

    cmpl $3271425186, 28(%rax)
    jne bad_exit

    cmpl $3173332426, 32(%rax)
    jne bad_exit

    cmpl $3021591842, 36(%rax)
    jne bad_exit

    cmpl $2859814885, 40(%rax)
    jne bad_exit

    cmpl $2837971901, 44(%rax)
    jne bad_exit

    cmpl $2629930164, 48(%rax)
    jne bad_exit

    cmpl $2570853404, 52(%rax)
    jne bad_exit

    cmpl $2563023345, 56(%rax)
    jne bad_exit

    cmpl $2545159997, 60(%rax)
    jne bad_exit

    cmpl $2537714538, 64(%rax)
    jne bad_exit

    cmpl $2398907257, 68(%rax)
    jne bad_exit

    cmpl $2353208569, 72(%rax)
    jne bad_exit

    cmpl $2282450877, 76(%rax)
    jne bad_exit

    cmpl $2279197891, 80(%rax)
    jne bad_exit

    cmpl $2097130813, 84(%rax)
    jne bad_exit

    cmpl $2033729991, 88(%rax)
    jne bad_exit

    cmpl $2023732740, 92(%rax)
    jne bad_exit

    cmpl $2000547371, 96(%rax)
    jne bad_exit

    cmpl $1807630281, 100(%rax)
    jne bad_exit

    cmpl $1806058304, 104(%rax)
    jne bad_exit

    cmpl $1619777295, 108(%rax)
    jne bad_exit

    cmpl $1395392084, 112(%rax)
    jne bad_exit

    cmpl $1242386766, 116(%rax)
    jne bad_exit

    cmpl $1223022568, 120(%rax)
    jne bad_exit

    cmpl $1022263798, 124(%rax)
    jne bad_exit

    cmpl $721534982, 128(%rax)
    jne bad_exit

    cmpl $712745744, 132(%rax)
    jne bad_exit

    cmpl $622801113, 136(%rax)
    jne bad_exit

    cmpl $607642757, 140(%rax)
    jne bad_exit

    cmpl $400807442, 144(%rax)
    jne bad_exit

    cmpl $326295346, 148(%rax)
    jne bad_exit

    cmpl $214149539, 152(%rax)
    jne bad_exit

    cmpl $0, 156(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4248970907, 3884223107, 3516474589, 3173332426, 3021591842, 2859814885, 2837971901, 2570853404, 2353208569, 2097130813, 2033729991, 1807630281, 1395392084, 214149539, 0
array2: .int 4269888019, 3972240393, 3608183792, 3286372475, 3271425186, 2629930164, 2563023345, 2545159997, 2537714538, 2398907257, 2282450877, 2279197891, 2023732740, 2000547371, 1806058304, 1619777295, 1242386766, 1223022568, 1022263798, 721534982, 712745744, 622801113, 607642757, 400807442, 326295346, 0
mergedArray: .zero 40
