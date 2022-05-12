
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4265882612, 0(%rax)
    jne bad_exit

    cmpl $4095555290, 4(%rax)
    jne bad_exit

    cmpl $3770498263, 8(%rax)
    jne bad_exit

    cmpl $3727486217, 12(%rax)
    jne bad_exit

    cmpl $3619732803, 16(%rax)
    jne bad_exit

    cmpl $3577233829, 20(%rax)
    jne bad_exit

    cmpl $3426082354, 24(%rax)
    jne bad_exit

    cmpl $3368877623, 28(%rax)
    jne bad_exit

    cmpl $3322655651, 32(%rax)
    jne bad_exit

    cmpl $3276206921, 36(%rax)
    jne bad_exit

    cmpl $3154532771, 40(%rax)
    jne bad_exit

    cmpl $3051104448, 44(%rax)
    jne bad_exit

    cmpl $2914376400, 48(%rax)
    jne bad_exit

    cmpl $2785445732, 52(%rax)
    jne bad_exit

    cmpl $2669401636, 56(%rax)
    jne bad_exit

    cmpl $2324226359, 60(%rax)
    jne bad_exit

    cmpl $1652276878, 64(%rax)
    jne bad_exit

    cmpl $1409276385, 68(%rax)
    jne bad_exit

    cmpl $1350556764, 72(%rax)
    jne bad_exit

    cmpl $1048339879, 76(%rax)
    jne bad_exit

    cmpl $944852062, 80(%rax)
    jne bad_exit

    cmpl $913583856, 84(%rax)
    jne bad_exit

    cmpl $784890739, 88(%rax)
    jne bad_exit

    cmpl $624023720, 92(%rax)
    jne bad_exit

    cmpl $409828754, 96(%rax)
    jne bad_exit

    cmpl $393748112, 100(%rax)
    jne bad_exit

    cmpl $194787051, 104(%rax)
    jne bad_exit

    cmpl $60656481, 108(%rax)
    jne bad_exit

    cmpl $0, 112(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3577233829, 3426082354, 3322655651, 3276206921, 3154532771, 2785445732, 2669401636, 1350556764, 1048339879, 944852062, 624023720, 409828754, 0
array2: .int 4265882612, 4095555290, 3770498263, 3727486217, 3619732803, 3577233829, 3368877623, 3051104448, 2914376400, 2324226359, 1652276878, 1409276385, 913583856, 784890739, 624023720, 393748112, 194787051, 60656481, 0
mergedArray: .zero 29
