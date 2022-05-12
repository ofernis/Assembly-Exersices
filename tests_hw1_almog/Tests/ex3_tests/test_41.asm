
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4194404911, 0(%rax)
    jne bad_exit

    cmpl $4156230193, 4(%rax)
    jne bad_exit

    cmpl $4148169159, 8(%rax)
    jne bad_exit

    cmpl $4065342446, 12(%rax)
    jne bad_exit

    cmpl $3909558963, 16(%rax)
    jne bad_exit

    cmpl $3775702862, 20(%rax)
    jne bad_exit

    cmpl $3523295327, 24(%rax)
    jne bad_exit

    cmpl $3104481056, 28(%rax)
    jne bad_exit

    cmpl $2838593040, 32(%rax)
    jne bad_exit

    cmpl $2576511152, 36(%rax)
    jne bad_exit

    cmpl $2466775692, 40(%rax)
    jne bad_exit

    cmpl $2416158460, 44(%rax)
    jne bad_exit

    cmpl $2195094367, 48(%rax)
    jne bad_exit

    cmpl $1363457786, 52(%rax)
    jne bad_exit

    cmpl $1202644794, 56(%rax)
    jne bad_exit

    cmpl $934641517, 60(%rax)
    jne bad_exit

    cmpl $806533412, 64(%rax)
    jne bad_exit

    cmpl $706304748, 68(%rax)
    jne bad_exit

    cmpl $623773696, 72(%rax)
    jne bad_exit

    cmpl $595349968, 76(%rax)
    jne bad_exit

    cmpl $276140022, 80(%rax)
    jne bad_exit

    cmpl $204830440, 84(%rax)
    jne bad_exit

    cmpl $120728748, 88(%rax)
    jne bad_exit

    cmpl $0, 92(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4156230193, 4148169159, 3909558963, 3523295327, 3104481056, 2416158460, 2195094367, 1202644794, 934641517, 806533412, 595349968, 204830440, 120728748, 0
array2: .int 4194404911, 4156230193, 4148169159, 4065342446, 3775702862, 2838593040, 2576511152, 2466775692, 2195094367, 1363457786, 1202644794, 1202644794, 706304748, 623773696, 276140022, 204830440, 120728748, 0
mergedArray: .zero 24
