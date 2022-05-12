
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4238401514, 0(%rax)
    jne bad_exit

    cmpl $4215577619, 4(%rax)
    jne bad_exit

    cmpl $3786068847, 8(%rax)
    jne bad_exit

    cmpl $3683832253, 12(%rax)
    jne bad_exit

    cmpl $3670931162, 16(%rax)
    jne bad_exit

    cmpl $3246399661, 20(%rax)
    jne bad_exit

    cmpl $3238235882, 24(%rax)
    jne bad_exit

    cmpl $2250814727, 28(%rax)
    jne bad_exit

    cmpl $2134125190, 32(%rax)
    jne bad_exit

    cmpl $1930444276, 36(%rax)
    jne bad_exit

    cmpl $1852909326, 40(%rax)
    jne bad_exit

    cmpl $1842413709, 44(%rax)
    jne bad_exit

    cmpl $1613382656, 48(%rax)
    jne bad_exit

    cmpl $1519899051, 52(%rax)
    jne bad_exit

    cmpl $1226967847, 56(%rax)
    jne bad_exit

    cmpl $1115401121, 60(%rax)
    jne bad_exit

    cmpl $925831275, 64(%rax)
    jne bad_exit

    cmpl $897781276, 68(%rax)
    jne bad_exit

    cmpl $695262997, 72(%rax)
    jne bad_exit

    cmpl $689324550, 76(%rax)
    jne bad_exit

    cmpl $507058408, 80(%rax)
    jne bad_exit

    cmpl $377370091, 84(%rax)
    jne bad_exit

    cmpl $257877268, 88(%rax)
    jne bad_exit

    cmpl $220914795, 92(%rax)
    jne bad_exit

    cmpl $157362236, 96(%rax)
    jne bad_exit

    cmpl $149719573, 100(%rax)
    jne bad_exit

    cmpl $85219948, 104(%rax)
    jne bad_exit

    cmpl $56832598, 108(%rax)
    jne bad_exit

    cmpl $25996614, 112(%rax)
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
array1: .int 3786068847, 3683832253, 3246399661, 3238235882, 2250814727, 2134125190, 1930444276, 1842413709, 1519899051, 1226967847, 1115401121, 925831275, 897781276, 689324550, 377370091, 220914795, 157362236, 149719573, 0
array2: .int 4238401514, 4215577619, 3670931162, 1852909326, 1613382656, 695262997, 507058408, 257877268, 85219948, 56832598, 25996614, 0
mergedArray: .zero 30
