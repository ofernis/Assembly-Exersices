
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4264472135, 0(%rax)
    jne bad_exit

    cmpl $3988157128, 4(%rax)
    jne bad_exit

    cmpl $2969356997, 8(%rax)
    jne bad_exit

    cmpl $2473471600, 12(%rax)
    jne bad_exit

    cmpl $1858897964, 16(%rax)
    jne bad_exit

    cmpl $1858788424, 20(%rax)
    jne bad_exit

    cmpl $1781049288, 24(%rax)
    jne bad_exit

    cmpl $1483103556, 28(%rax)
    jne bad_exit

    cmpl $1377112814, 32(%rax)
    jne bad_exit

    cmpl $1044386052, 36(%rax)
    jne bad_exit

    cmpl $892653756, 40(%rax)
    jne bad_exit

    cmpl $892181023, 44(%rax)
    jne bad_exit

    cmpl $848594684, 48(%rax)
    jne bad_exit

    cmpl $841409936, 52(%rax)
    jne bad_exit

    cmpl $739762269, 56(%rax)
    jne bad_exit

    cmpl $477448818, 60(%rax)
    jne bad_exit

    cmpl $455391582, 64(%rax)
    jne bad_exit

    cmpl $448037008, 68(%rax)
    jne bad_exit

    cmpl $441642859, 72(%rax)
    jne bad_exit

    cmpl $145139158, 76(%rax)
    jne bad_exit

    cmpl $124210203, 80(%rax)
    jne bad_exit

    cmpl $0, 84(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3988157128, 2969356997, 2473471600, 1858788424, 1781049288, 1044386052, 892653756, 892181023, 739762269, 455391582, 448037008, 441642859, 145139158, 124210203, 0
array2: .int 4264472135, 1858897964, 1483103556, 1377112814, 1044386052, 892653756, 848594684, 841409936, 477448818, 455391582, 124210203, 0
mergedArray: .zero 22
