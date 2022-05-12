
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4260749224, 0(%rax)
    jne bad_exit

    cmpl $4171865200, 4(%rax)
    jne bad_exit

    cmpl $4142509087, 8(%rax)
    jne bad_exit

    cmpl $3941921149, 12(%rax)
    jne bad_exit

    cmpl $3922775718, 16(%rax)
    jne bad_exit

    cmpl $3610443156, 20(%rax)
    jne bad_exit

    cmpl $3352791738, 24(%rax)
    jne bad_exit

    cmpl $3292552020, 28(%rax)
    jne bad_exit

    cmpl $3267330714, 32(%rax)
    jne bad_exit

    cmpl $3218617636, 36(%rax)
    jne bad_exit

    cmpl $2797403916, 40(%rax)
    jne bad_exit

    cmpl $2614103597, 44(%rax)
    jne bad_exit

    cmpl $2342776177, 48(%rax)
    jne bad_exit

    cmpl $2322668342, 52(%rax)
    jne bad_exit

    cmpl $2159277489, 56(%rax)
    jne bad_exit

    cmpl $1523146677, 60(%rax)
    jne bad_exit

    cmpl $1364043202, 64(%rax)
    jne bad_exit

    cmpl $1358637232, 68(%rax)
    jne bad_exit

    cmpl $1335025943, 72(%rax)
    jne bad_exit

    cmpl $1215479752, 76(%rax)
    jne bad_exit

    cmpl $1180839724, 80(%rax)
    jne bad_exit

    cmpl $1136207876, 84(%rax)
    jne bad_exit

    cmpl $1106062440, 88(%rax)
    jne bad_exit

    cmpl $967142702, 92(%rax)
    jne bad_exit

    cmpl $805445011, 96(%rax)
    jne bad_exit

    cmpl $723687223, 100(%rax)
    jne bad_exit

    cmpl $579650980, 104(%rax)
    jne bad_exit

    cmpl $467848400, 108(%rax)
    jne bad_exit

    cmpl $0, 112(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4260749224, 3352791738, 2342776177, 1523146677, 1364043202, 1215479752, 1180839724, 805445011, 723687223, 579650980, 0
array2: .int 4260749224, 4171865200, 4142509087, 3941921149, 3922775718, 3610443156, 3352791738, 3292552020, 3267330714, 3218617636, 2797403916, 2614103597, 2342776177, 2322668342, 2159277489, 1358637232, 1335025943, 1215479752, 1136207876, 1106062440, 967142702, 723687223, 467848400, 0
mergedArray: .zero 29
