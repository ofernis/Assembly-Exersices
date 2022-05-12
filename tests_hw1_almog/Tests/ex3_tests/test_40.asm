
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3989504333, 0(%rax)
    jne bad_exit

    cmpl $3935693674, 4(%rax)
    jne bad_exit

    cmpl $3725413921, 8(%rax)
    jne bad_exit

    cmpl $3684020698, 12(%rax)
    jne bad_exit

    cmpl $3663161472, 16(%rax)
    jne bad_exit

    cmpl $3274991051, 20(%rax)
    jne bad_exit

    cmpl $3067599883, 24(%rax)
    jne bad_exit

    cmpl $2746696632, 28(%rax)
    jne bad_exit

    cmpl $2222566301, 32(%rax)
    jne bad_exit

    cmpl $2113434469, 36(%rax)
    jne bad_exit

    cmpl $2021602685, 40(%rax)
    jne bad_exit

    cmpl $1764546609, 44(%rax)
    jne bad_exit

    cmpl $1682898529, 48(%rax)
    jne bad_exit

    cmpl $1526574607, 52(%rax)
    jne bad_exit

    cmpl $766583034, 56(%rax)
    jne bad_exit

    cmpl $339439812, 60(%rax)
    jne bad_exit

    cmpl $274999665, 64(%rax)
    jne bad_exit

    cmpl $168330536, 68(%rax)
    jne bad_exit

    cmpl $130674983, 72(%rax)
    jne bad_exit

    cmpl $123127459, 76(%rax)
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
array1: .int 3989504333, 3935693674, 3725413921, 3684020698, 3663161472, 3274991051, 3067599883, 2746696632, 2222566301, 2113434469, 2021602685, 1764546609, 1682898529, 1526574607, 766583034, 339439812, 274999665, 168330536, 130674983, 123127459, 0
array2: .int 3663161472, 2746696632, 1764546609, 1764546609, 274999665, 274999665, 274999665, 168330536, 123127459, 0, 0
mergedArray: .zero 21
