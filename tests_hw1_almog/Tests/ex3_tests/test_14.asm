
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4274121112, 0(%rax)
    jne bad_exit

    cmpl $3970758603, 4(%rax)
    jne bad_exit

    cmpl $3766281140, 8(%rax)
    jne bad_exit

    cmpl $3720459171, 12(%rax)
    jne bad_exit

    cmpl $3429149495, 16(%rax)
    jne bad_exit

    cmpl $3025797698, 20(%rax)
    jne bad_exit

    cmpl $2847129846, 24(%rax)
    jne bad_exit

    cmpl $2756682988, 28(%rax)
    jne bad_exit

    cmpl $2693808236, 32(%rax)
    jne bad_exit

    cmpl $2554156207, 36(%rax)
    jne bad_exit

    cmpl $2535914976, 40(%rax)
    jne bad_exit

    cmpl $2385628604, 44(%rax)
    jne bad_exit

    cmpl $2362785161, 48(%rax)
    jne bad_exit

    cmpl $2236428883, 52(%rax)
    jne bad_exit

    cmpl $2226851279, 56(%rax)
    jne bad_exit

    cmpl $2131725704, 60(%rax)
    jne bad_exit

    cmpl $2113884555, 64(%rax)
    jne bad_exit

    cmpl $1646161198, 68(%rax)
    jne bad_exit

    cmpl $1422155856, 72(%rax)
    jne bad_exit

    cmpl $1312922897, 76(%rax)
    jne bad_exit

    cmpl $1167736400, 80(%rax)
    jne bad_exit

    cmpl $1025914038, 84(%rax)
    jne bad_exit

    cmpl $1011565224, 88(%rax)
    jne bad_exit

    cmpl $980665697, 92(%rax)
    jne bad_exit

    cmpl $920107114, 96(%rax)
    jne bad_exit

    cmpl $429619506, 100(%rax)
    jne bad_exit

    cmpl $339510103, 104(%rax)
    jne bad_exit

    cmpl $203279289, 108(%rax)
    jne bad_exit

    cmpl $145548171, 112(%rax)
    jne bad_exit

    cmpl $0, 116(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4274121112, 3766281140, 3720459171, 3429149495, 3025797698, 2847129846, 2756682988, 2554156207, 2385628604, 2362785161, 2236428883, 2226851279, 2113884555, 1422155856, 1167736400, 980665697, 339510103, 203279289, 0
array2: .int 4274121112, 4274121112, 3970758603, 2693808236, 2535914976, 2385628604, 2362785161, 2226851279, 2131725704, 2113884555, 1646161198, 1312922897, 1025914038, 1011565224, 920107114, 429619506, 339510103, 339510103, 203279289, 203279289, 145548171, 0
mergedArray: .zero 30
