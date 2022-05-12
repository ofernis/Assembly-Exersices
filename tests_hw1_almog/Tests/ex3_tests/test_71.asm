
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4150925388, 0(%rax)
    jne bad_exit

    cmpl $3967932770, 4(%rax)
    jne bad_exit

    cmpl $3794763844, 8(%rax)
    jne bad_exit

    cmpl $3552582572, 12(%rax)
    jne bad_exit

    cmpl $3526121726, 16(%rax)
    jne bad_exit

    cmpl $3488590311, 20(%rax)
    jne bad_exit

    cmpl $3261944307, 24(%rax)
    jne bad_exit

    cmpl $2863706752, 28(%rax)
    jne bad_exit

    cmpl $2840432883, 32(%rax)
    jne bad_exit

    cmpl $2809888443, 36(%rax)
    jne bad_exit

    cmpl $2742235717, 40(%rax)
    jne bad_exit

    cmpl $2714770478, 44(%rax)
    jne bad_exit

    cmpl $2402375026, 48(%rax)
    jne bad_exit

    cmpl $2356816218, 52(%rax)
    jne bad_exit

    cmpl $2284980156, 56(%rax)
    jne bad_exit

    cmpl $2210055700, 60(%rax)
    jne bad_exit

    cmpl $2146133431, 64(%rax)
    jne bad_exit

    cmpl $2079440532, 68(%rax)
    jne bad_exit

    cmpl $1885274392, 72(%rax)
    jne bad_exit

    cmpl $1801965225, 76(%rax)
    jne bad_exit

    cmpl $1738593362, 80(%rax)
    jne bad_exit

    cmpl $1735786994, 84(%rax)
    jne bad_exit

    cmpl $1596794579, 88(%rax)
    jne bad_exit

    cmpl $1315191127, 92(%rax)
    jne bad_exit

    cmpl $1214294372, 96(%rax)
    jne bad_exit

    cmpl $734226210, 100(%rax)
    jne bad_exit

    cmpl $709038501, 104(%rax)
    jne bad_exit

    cmpl $676153480, 108(%rax)
    jne bad_exit

    cmpl $309653887, 112(%rax)
    jne bad_exit

    cmpl $137560159, 116(%rax)
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
array1: .int 4150925388, 3967932770, 3794763844, 3526121726, 3488590311, 3261944307, 2840432883, 2809888443, 2742235717, 2356816218, 2284980156, 2210055700, 2146133431, 2079440532, 1738593362, 1735786994, 1315191127, 1214294372, 676153480, 309653887, 0
array2: .int 3552582572, 3526121726, 3526121726, 3526121726, 3526121726, 3261944307, 3261944307, 2863706752, 2840432883, 2714770478, 2402375026, 2210055700, 2146133431, 2079440532, 1885274392, 1801965225, 1735786994, 1735786994, 1735786994, 1596794579, 1315191127, 734226210, 709038501, 676153480, 309653887, 309653887, 137560159, 0, 0, 0
mergedArray: .zero 31
