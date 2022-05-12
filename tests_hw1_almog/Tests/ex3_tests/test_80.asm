
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3731050559, 0(%rax)
    jne bad_exit

    cmpl $3433810505, 4(%rax)
    jne bad_exit

    cmpl $3299171818, 8(%rax)
    jne bad_exit

    cmpl $3123381288, 12(%rax)
    jne bad_exit

    cmpl $3114825407, 16(%rax)
    jne bad_exit

    cmpl $3089912900, 20(%rax)
    jne bad_exit

    cmpl $2905336329, 24(%rax)
    jne bad_exit

    cmpl $2876935246, 28(%rax)
    jne bad_exit

    cmpl $2605715546, 32(%rax)
    jne bad_exit

    cmpl $2557265720, 36(%rax)
    jne bad_exit

    cmpl $2367420596, 40(%rax)
    jne bad_exit

    cmpl $2256129044, 44(%rax)
    jne bad_exit

    cmpl $2224583886, 48(%rax)
    jne bad_exit

    cmpl $2218155753, 52(%rax)
    jne bad_exit

    cmpl $2191478576, 56(%rax)
    jne bad_exit

    cmpl $1816444910, 60(%rax)
    jne bad_exit

    cmpl $1653675893, 64(%rax)
    jne bad_exit

    cmpl $1643042469, 68(%rax)
    jne bad_exit

    cmpl $1370773764, 72(%rax)
    jne bad_exit

    cmpl $1365454150, 76(%rax)
    jne bad_exit

    cmpl $1354175834, 80(%rax)
    jne bad_exit

    cmpl $1150559318, 84(%rax)
    jne bad_exit

    cmpl $942767888, 88(%rax)
    jne bad_exit

    cmpl $719751999, 92(%rax)
    jne bad_exit

    cmpl $556411147, 96(%rax)
    jne bad_exit

    cmpl $531046652, 100(%rax)
    jne bad_exit

    cmpl $502060649, 104(%rax)
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
array1: .int 3731050559, 3299171818, 3123381288, 3114825407, 3089912900, 2905336329, 2605715546, 2557265720, 2367420596, 2224583886, 2218155753, 2191478576, 1816444910, 1653675893, 1370773764, 1365454150, 1354175834, 1150559318, 942767888, 719751999, 556411147, 531046652, 502060649, 0
array2: .int 3433810505, 3123381288, 3123381288, 2876935246, 2256129044, 2218155753, 2218155753, 1643042469, 1370773764, 1365454150, 1150559318, 502060649, 0, 0
mergedArray: .zero 28
