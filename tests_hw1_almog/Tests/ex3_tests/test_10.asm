
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4231450161, 0(%rax)
    jne bad_exit

    cmpl $4085027177, 4(%rax)
    jne bad_exit

    cmpl $4058063726, 8(%rax)
    jne bad_exit

    cmpl $3791201017, 12(%rax)
    jne bad_exit

    cmpl $3721596328, 16(%rax)
    jne bad_exit

    cmpl $3418226430, 20(%rax)
    jne bad_exit

    cmpl $3240051193, 24(%rax)
    jne bad_exit

    cmpl $3015409937, 28(%rax)
    jne bad_exit

    cmpl $2913324352, 32(%rax)
    jne bad_exit

    cmpl $2773765949, 36(%rax)
    jne bad_exit

    cmpl $2711384267, 40(%rax)
    jne bad_exit

    cmpl $2527475812, 44(%rax)
    jne bad_exit

    cmpl $2517138455, 48(%rax)
    jne bad_exit

    cmpl $2502384491, 52(%rax)
    jne bad_exit

    cmpl $2407310054, 56(%rax)
    jne bad_exit

    cmpl $2271814189, 60(%rax)
    jne bad_exit

    cmpl $2197035121, 64(%rax)
    jne bad_exit

    cmpl $2168939679, 68(%rax)
    jne bad_exit

    cmpl $2106386949, 72(%rax)
    jne bad_exit

    cmpl $1941402125, 76(%rax)
    jne bad_exit

    cmpl $1860103914, 80(%rax)
    jne bad_exit

    cmpl $1795606129, 84(%rax)
    jne bad_exit

    cmpl $1770751540, 88(%rax)
    jne bad_exit

    cmpl $1442371960, 92(%rax)
    jne bad_exit

    cmpl $1331296673, 96(%rax)
    jne bad_exit

    cmpl $1319768657, 100(%rax)
    jne bad_exit

    cmpl $1254724042, 104(%rax)
    jne bad_exit

    cmpl $1240114701, 108(%rax)
    jne bad_exit

    cmpl $961149388, 112(%rax)
    jne bad_exit

    cmpl $960473473, 116(%rax)
    jne bad_exit

    cmpl $907938413, 120(%rax)
    jne bad_exit

    cmpl $679330157, 124(%rax)
    jne bad_exit

    cmpl $515717162, 128(%rax)
    jne bad_exit

    cmpl $380619745, 132(%rax)
    jne bad_exit

    cmpl $287550013, 136(%rax)
    jne bad_exit

    cmpl $204880150, 140(%rax)
    jne bad_exit

    cmpl $182671454, 144(%rax)
    jne bad_exit

    cmpl $13846144, 148(%rax)
    jne bad_exit

    cmpl $0, 152(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3791201017, 3721596328, 3418226430, 3240051193, 3015409937, 2711384267, 2527475812, 2197035121, 2106386949, 1941402125, 1795606129, 1254724042, 679330157, 515717162, 182671454, 0
array2: .int 4231450161, 4085027177, 4058063726, 2913324352, 2773765949, 2517138455, 2502384491, 2407310054, 2271814189, 2168939679, 1941402125, 1860103914, 1770751540, 1442371960, 1331296673, 1319768657, 1254724042, 1254724042, 1240114701, 961149388, 960473473, 907938413, 380619745, 287550013, 204880150, 13846144, 0
mergedArray: .zero 39
