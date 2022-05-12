
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4190291208, 0(%rax)
    jne bad_exit

    cmpl $3686739799, 4(%rax)
    jne bad_exit

    cmpl $3552235899, 8(%rax)
    jne bad_exit

    cmpl $3490233815, 12(%rax)
    jne bad_exit

    cmpl $3408480404, 16(%rax)
    jne bad_exit

    cmpl $3089797092, 20(%rax)
    jne bad_exit

    cmpl $2921396888, 24(%rax)
    jne bad_exit

    cmpl $2835294880, 28(%rax)
    jne bad_exit

    cmpl $2698979983, 32(%rax)
    jne bad_exit

    cmpl $2550214206, 36(%rax)
    jne bad_exit

    cmpl $2387023774, 40(%rax)
    jne bad_exit

    cmpl $2278191567, 44(%rax)
    jne bad_exit

    cmpl $2114789501, 48(%rax)
    jne bad_exit

    cmpl $2064467425, 52(%rax)
    jne bad_exit

    cmpl $1956257478, 56(%rax)
    jne bad_exit

    cmpl $1778824853, 60(%rax)
    jne bad_exit

    cmpl $1325299223, 64(%rax)
    jne bad_exit

    cmpl $1312611423, 68(%rax)
    jne bad_exit

    cmpl $1269231652, 72(%rax)
    jne bad_exit

    cmpl $1256682313, 76(%rax)
    jne bad_exit

    cmpl $1223154473, 80(%rax)
    jne bad_exit

    cmpl $911841742, 84(%rax)
    jne bad_exit

    cmpl $735437227, 88(%rax)
    jne bad_exit

    cmpl $722763822, 92(%rax)
    jne bad_exit

    cmpl $614775904, 96(%rax)
    jne bad_exit

    cmpl $485639068, 100(%rax)
    jne bad_exit

    cmpl $396753563, 104(%rax)
    jne bad_exit

    cmpl $264221995, 108(%rax)
    jne bad_exit

    cmpl $134921119, 112(%rax)
    jne bad_exit

    cmpl $83408805, 116(%rax)
    jne bad_exit

    cmpl $0, 120(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3686739799, 3552235899, 3490233815, 3089797092, 2921396888, 2835294880, 2698979983, 2550214206, 2387023774, 2278191567, 2064467425, 1956257478, 1778824853, 1312611423, 1256682313, 1223154473, 911841742, 735437227, 614775904, 485639068, 396753563, 134921119, 83408805, 0
array2: .int 4190291208, 3408480404, 2114789501, 2064467425, 1325299223, 1269231652, 1256682313, 722763822, 614775904, 264221995, 0
mergedArray: .zero 31
