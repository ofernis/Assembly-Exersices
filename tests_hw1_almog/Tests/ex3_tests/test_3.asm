
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4225019694, 0(%rax)
    jne bad_exit

    cmpl $4140228253, 4(%rax)
    jne bad_exit

    cmpl $4047680108, 8(%rax)
    jne bad_exit

    cmpl $3906530116, 12(%rax)
    jne bad_exit

    cmpl $3891111832, 16(%rax)
    jne bad_exit

    cmpl $3771044894, 20(%rax)
    jne bad_exit

    cmpl $3718088352, 24(%rax)
    jne bad_exit

    cmpl $3692479364, 28(%rax)
    jne bad_exit

    cmpl $3677279333, 32(%rax)
    jne bad_exit

    cmpl $3675437437, 36(%rax)
    jne bad_exit

    cmpl $3490661468, 40(%rax)
    jne bad_exit

    cmpl $3472990103, 44(%rax)
    jne bad_exit

    cmpl $3349803137, 48(%rax)
    jne bad_exit

    cmpl $3335775633, 52(%rax)
    jne bad_exit

    cmpl $3333612976, 56(%rax)
    jne bad_exit

    cmpl $2942247296, 60(%rax)
    jne bad_exit

    cmpl $2502292781, 64(%rax)
    jne bad_exit

    cmpl $2460443764, 68(%rax)
    jne bad_exit

    cmpl $2336291348, 72(%rax)
    jne bad_exit

    cmpl $2308913344, 76(%rax)
    jne bad_exit

    cmpl $2186689191, 80(%rax)
    jne bad_exit

    cmpl $2146633806, 84(%rax)
    jne bad_exit

    cmpl $2027636101, 88(%rax)
    jne bad_exit

    cmpl $1985148386, 92(%rax)
    jne bad_exit

    cmpl $1834943467, 96(%rax)
    jne bad_exit

    cmpl $1711657799, 100(%rax)
    jne bad_exit

    cmpl $1606944228, 104(%rax)
    jne bad_exit

    cmpl $1422447931, 108(%rax)
    jne bad_exit

    cmpl $1298689172, 112(%rax)
    jne bad_exit

    cmpl $1135115074, 116(%rax)
    jne bad_exit

    cmpl $1020485873, 120(%rax)
    jne bad_exit

    cmpl $870890692, 124(%rax)
    jne bad_exit

    cmpl $595589101, 128(%rax)
    jne bad_exit

    cmpl $331557650, 132(%rax)
    jne bad_exit

    cmpl $0, 136(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4225019694, 4140228253, 4047680108, 3906530116, 3891111832, 3771044894, 3718088352, 3692479364, 3677279333, 3675437437, 3490661468, 3472990103, 3335775633, 3333612976, 2942247296, 2502292781, 2460443764, 2336291348, 2308913344, 2146633806, 2027636101, 1834943467, 1711657799, 1422447931, 1298689172, 1135115074, 1020485873, 870890692, 595589101, 331557650, 0
array2: .int 3349803137, 3335775633, 3333612976, 2186689191, 1985148386, 1834943467, 1711657799, 1711657799, 1606944228, 1298689172, 0
mergedArray: .zero 35
