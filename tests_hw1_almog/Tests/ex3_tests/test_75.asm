
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4041406072, 0(%rax)
    jne bad_exit

    cmpl $3908274748, 4(%rax)
    jne bad_exit

    cmpl $3871157157, 8(%rax)
    jne bad_exit

    cmpl $3836661404, 12(%rax)
    jne bad_exit

    cmpl $3788808558, 16(%rax)
    jne bad_exit

    cmpl $3739407669, 20(%rax)
    jne bad_exit

    cmpl $3643044436, 24(%rax)
    jne bad_exit

    cmpl $3577798730, 28(%rax)
    jne bad_exit

    cmpl $3544356484, 32(%rax)
    jne bad_exit

    cmpl $3148300584, 36(%rax)
    jne bad_exit

    cmpl $3020690779, 40(%rax)
    jne bad_exit

    cmpl $2855789664, 44(%rax)
    jne bad_exit

    cmpl $2761218289, 48(%rax)
    jne bad_exit

    cmpl $2073918930, 52(%rax)
    jne bad_exit

    cmpl $2025553402, 56(%rax)
    jne bad_exit

    cmpl $2012928642, 60(%rax)
    jne bad_exit

    cmpl $1962180165, 64(%rax)
    jne bad_exit

    cmpl $1499831291, 68(%rax)
    jne bad_exit

    cmpl $1332715418, 72(%rax)
    jne bad_exit

    cmpl $508084566, 76(%rax)
    jne bad_exit

    cmpl $357992380, 80(%rax)
    jne bad_exit

    cmpl $326032249, 84(%rax)
    jne bad_exit

    cmpl $83971499, 88(%rax)
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
array1: .int 3908274748, 3836661404, 3788808558, 3739407669, 3643044436, 3577798730, 3544356484, 3148300584, 3020690779, 2855789664, 2073918930, 2025553402, 2012928642, 1962180165, 1499831291, 1332715418, 357992380, 326032249, 0
array2: .int 4041406072, 3871157157, 3577798730, 3148300584, 3020690779, 3020690779, 2855789664, 2761218289, 2012928642, 1499831291, 508084566, 357992380, 326032249, 83971499, 0, 0
mergedArray: .zero 24
