
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4166142390, 0(%rax)
    jne bad_exit

    cmpl $3953771990, 4(%rax)
    jne bad_exit

    cmpl $3712797084, 8(%rax)
    jne bad_exit

    cmpl $3683161464, 12(%rax)
    jne bad_exit

    cmpl $3669946023, 16(%rax)
    jne bad_exit

    cmpl $3472562552, 20(%rax)
    jne bad_exit

    cmpl $3354864527, 24(%rax)
    jne bad_exit

    cmpl $3158119917, 28(%rax)
    jne bad_exit

    cmpl $2877500959, 32(%rax)
    jne bad_exit

    cmpl $2835299541, 36(%rax)
    jne bad_exit

    cmpl $2805143907, 40(%rax)
    jne bad_exit

    cmpl $2671368367, 44(%rax)
    jne bad_exit

    cmpl $2654531198, 48(%rax)
    jne bad_exit

    cmpl $2610144552, 52(%rax)
    jne bad_exit

    cmpl $2563358148, 56(%rax)
    jne bad_exit

    cmpl $2472570062, 60(%rax)
    jne bad_exit

    cmpl $2071477206, 64(%rax)
    jne bad_exit

    cmpl $2070591885, 68(%rax)
    jne bad_exit

    cmpl $1772184515, 72(%rax)
    jne bad_exit

    cmpl $1711237284, 76(%rax)
    jne bad_exit

    cmpl $1431105678, 80(%rax)
    jne bad_exit

    cmpl $1390100633, 84(%rax)
    jne bad_exit

    cmpl $1234838070, 88(%rax)
    jne bad_exit

    cmpl $1195926863, 92(%rax)
    jne bad_exit

    cmpl $903966472, 96(%rax)
    jne bad_exit

    cmpl $721326177, 100(%rax)
    jne bad_exit

    cmpl $542335499, 104(%rax)
    jne bad_exit

    cmpl $339260550, 108(%rax)
    jne bad_exit

    cmpl $331427426, 112(%rax)
    jne bad_exit

    cmpl $254442219, 116(%rax)
    jne bad_exit

    cmpl $248584437, 120(%rax)
    jne bad_exit

    cmpl $238524232, 124(%rax)
    jne bad_exit

    cmpl $182922680, 128(%rax)
    jne bad_exit

    cmpl $87993319, 132(%rax)
    jne bad_exit

    cmpl $68471114, 136(%rax)
    jne bad_exit

    cmpl $0, 140(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4166142390, 3953771990, 3712797084, 3683161464, 3472562552, 3354864527, 3158119917, 2877500959, 2805143907, 2671368367, 2472570062, 2070591885, 1390100633, 339260550, 331427426, 254442219, 248584437, 238524232, 182922680, 68471114, 0
array2: .int 3953771990, 3953771990, 3683161464, 3669946023, 3158119917, 3158119917, 3158119917, 3158119917, 3158119917, 2835299541, 2654531198, 2610144552, 2563358148, 2071477206, 1772184515, 1711237284, 1431105678, 1234838070, 1195926863, 903966472, 721326177, 542335499, 331427426, 254442219, 87993319, 0, 0, 0, 0
mergedArray: .zero 36
