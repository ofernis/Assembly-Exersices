
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4145302661, 0(%rax)
    jne bad_exit

    cmpl $3895914176, 4(%rax)
    jne bad_exit

    cmpl $3832046417, 8(%rax)
    jne bad_exit

    cmpl $3785767832, 12(%rax)
    jne bad_exit

    cmpl $3752123161, 16(%rax)
    jne bad_exit

    cmpl $3603357994, 20(%rax)
    jne bad_exit

    cmpl $3582451104, 24(%rax)
    jne bad_exit

    cmpl $3324823080, 28(%rax)
    jne bad_exit

    cmpl $3280567132, 32(%rax)
    jne bad_exit

    cmpl $3169993066, 36(%rax)
    jne bad_exit

    cmpl $3081277388, 40(%rax)
    jne bad_exit

    cmpl $2923544643, 44(%rax)
    jne bad_exit

    cmpl $2419858675, 48(%rax)
    jne bad_exit

    cmpl $2324787042, 52(%rax)
    jne bad_exit

    cmpl $2020646009, 56(%rax)
    jne bad_exit

    cmpl $1892649319, 60(%rax)
    jne bad_exit

    cmpl $1782812519, 64(%rax)
    jne bad_exit

    cmpl $1717772350, 68(%rax)
    jne bad_exit

    cmpl $1665257938, 72(%rax)
    jne bad_exit

    cmpl $1636090117, 76(%rax)
    jne bad_exit

    cmpl $1568066215, 80(%rax)
    jne bad_exit

    cmpl $1408966115, 84(%rax)
    jne bad_exit

    cmpl $1358457680, 88(%rax)
    jne bad_exit

    cmpl $1176873343, 92(%rax)
    jne bad_exit

    cmpl $1157111616, 96(%rax)
    jne bad_exit

    cmpl $1137712290, 100(%rax)
    jne bad_exit

    cmpl $986862795, 104(%rax)
    jne bad_exit

    cmpl $726205594, 108(%rax)
    jne bad_exit

    cmpl $637594648, 112(%rax)
    jne bad_exit

    cmpl $611774454, 116(%rax)
    jne bad_exit

    cmpl $576393639, 120(%rax)
    jne bad_exit

    cmpl $473612075, 124(%rax)
    jne bad_exit

    cmpl $67350292, 128(%rax)
    jne bad_exit

    cmpl $0, 132(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4145302661, 3895914176, 3832046417, 3785767832, 3752123161, 3603357994, 3582451104, 3324823080, 3169993066, 3081277388, 2923544643, 2419858675, 2324787042, 2020646009, 1892649319, 1782812519, 1717772350, 1568066215, 1358457680, 1176873343, 1157111616, 1137712290, 986862795, 726205594, 611774454, 473612075, 67350292, 0
array2: .int 3752123161, 3324823080, 3280567132, 3169993066, 3169993066, 2923544643, 2923544643, 1892649319, 1665257938, 1636090117, 1408966115, 1176873343, 637594648, 576393639, 0
mergedArray: .zero 34
