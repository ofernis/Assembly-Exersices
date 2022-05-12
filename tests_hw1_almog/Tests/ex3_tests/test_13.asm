
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4279515668, 0(%rax)
    jne bad_exit

    cmpl $4240844029, 4(%rax)
    jne bad_exit

    cmpl $4132310039, 8(%rax)
    jne bad_exit

    cmpl $4069451495, 12(%rax)
    jne bad_exit

    cmpl $4014827004, 16(%rax)
    jne bad_exit

    cmpl $3933930416, 20(%rax)
    jne bad_exit

    cmpl $3917080641, 24(%rax)
    jne bad_exit

    cmpl $3818430332, 28(%rax)
    jne bad_exit

    cmpl $3629265446, 32(%rax)
    jne bad_exit

    cmpl $3533034512, 36(%rax)
    jne bad_exit

    cmpl $3305297653, 40(%rax)
    jne bad_exit

    cmpl $3289279354, 44(%rax)
    jne bad_exit

    cmpl $3252030094, 48(%rax)
    jne bad_exit

    cmpl $3101864134, 52(%rax)
    jne bad_exit

    cmpl $3055004389, 56(%rax)
    jne bad_exit

    cmpl $2855976011, 60(%rax)
    jne bad_exit

    cmpl $2791520221, 64(%rax)
    jne bad_exit

    cmpl $2748165235, 68(%rax)
    jne bad_exit

    cmpl $2611160274, 72(%rax)
    jne bad_exit

    cmpl $2274174973, 76(%rax)
    jne bad_exit

    cmpl $2208145516, 80(%rax)
    jne bad_exit

    cmpl $2029336405, 84(%rax)
    jne bad_exit

    cmpl $1964563915, 88(%rax)
    jne bad_exit

    cmpl $1692652584, 92(%rax)
    jne bad_exit

    cmpl $1582027430, 96(%rax)
    jne bad_exit

    cmpl $1536642070, 100(%rax)
    jne bad_exit

    cmpl $1060534298, 104(%rax)
    jne bad_exit

    cmpl $1053895874, 108(%rax)
    jne bad_exit

    cmpl $1022239840, 112(%rax)
    jne bad_exit

    cmpl $981438263, 116(%rax)
    jne bad_exit

    cmpl $923001107, 120(%rax)
    jne bad_exit

    cmpl $848013444, 124(%rax)
    jne bad_exit

    cmpl $647482120, 128(%rax)
    jne bad_exit

    cmpl $516577679, 132(%rax)
    jne bad_exit

    cmpl $501751950, 136(%rax)
    jne bad_exit

    cmpl $488564057, 140(%rax)
    jne bad_exit

    cmpl $406619849, 144(%rax)
    jne bad_exit

    cmpl $301882885, 148(%rax)
    jne bad_exit

    cmpl $228204813, 152(%rax)
    jne bad_exit

    cmpl $199075823, 156(%rax)
    jne bad_exit

    cmpl $183105300, 160(%rax)
    jne bad_exit

    cmpl $126626446, 164(%rax)
    jne bad_exit

    cmpl $0, 168(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4279515668, 4240844029, 4069451495, 4014827004, 3917080641, 3629265446, 3533034512, 3289279354, 3252030094, 3055004389, 2855976011, 2791520221, 2611160274, 2274174973, 2208145516, 1692652584, 1582027430, 1536642070, 1060534298, 1022239840, 981438263, 923001107, 501751950, 488564057, 406619849, 301882885, 228204813, 0
array2: .int 4132310039, 4069451495, 3933930416, 3917080641, 3917080641, 3818430332, 3533034512, 3305297653, 3289279354, 3101864134, 2791520221, 2748165235, 2611160274, 2029336405, 1964563915, 1692652584, 1582027430, 1060534298, 1053895874, 848013444, 647482120, 516577679, 501751950, 488564057, 228204813, 199075823, 183105300, 126626446, 0
mergedArray: .zero 43
