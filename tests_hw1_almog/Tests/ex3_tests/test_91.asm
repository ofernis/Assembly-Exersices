
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4221615387, 0(%rax)
    jne bad_exit

    cmpl $4173249519, 4(%rax)
    jne bad_exit

    cmpl $4165387285, 8(%rax)
    jne bad_exit

    cmpl $4164501372, 12(%rax)
    jne bad_exit

    cmpl $3625013300, 16(%rax)
    jne bad_exit

    cmpl $3297205680, 20(%rax)
    jne bad_exit

    cmpl $3082747115, 24(%rax)
    jne bad_exit

    cmpl $3070206956, 28(%rax)
    jne bad_exit

    cmpl $3051887845, 32(%rax)
    jne bad_exit

    cmpl $2904264034, 36(%rax)
    jne bad_exit

    cmpl $2787360833, 40(%rax)
    jne bad_exit

    cmpl $2747553672, 44(%rax)
    jne bad_exit

    cmpl $2139208308, 48(%rax)
    jne bad_exit

    cmpl $2067611435, 52(%rax)
    jne bad_exit

    cmpl $2058364889, 56(%rax)
    jne bad_exit

    cmpl $1867541359, 60(%rax)
    jne bad_exit

    cmpl $1644187312, 64(%rax)
    jne bad_exit

    cmpl $1561189154, 68(%rax)
    jne bad_exit

    cmpl $1440854148, 72(%rax)
    jne bad_exit

    cmpl $1436855310, 76(%rax)
    jne bad_exit

    cmpl $1369507572, 80(%rax)
    jne bad_exit

    cmpl $1342544418, 84(%rax)
    jne bad_exit

    cmpl $1281864318, 88(%rax)
    jne bad_exit

    cmpl $1271535936, 92(%rax)
    jne bad_exit

    cmpl $1055520363, 96(%rax)
    jne bad_exit

    cmpl $971372971, 100(%rax)
    jne bad_exit

    cmpl $929409975, 104(%rax)
    jne bad_exit

    cmpl $917485695, 108(%rax)
    jne bad_exit

    cmpl $527344189, 112(%rax)
    jne bad_exit

    cmpl $402068719, 116(%rax)
    jne bad_exit

    cmpl $164109814, 120(%rax)
    jne bad_exit

    cmpl $75711085, 124(%rax)
    jne bad_exit

    cmpl $22890455, 128(%rax)
    jne bad_exit

    cmpl $0, 132(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4221615387, 4165387285, 3297205680, 3070206956, 2904264034, 2747553672, 2058364889, 1644187312, 1561189154, 1440854148, 1436855310, 1369507572, 1342544418, 1281864318, 1271535936, 1055520363, 971372971, 917485695, 527344189, 75711085, 22890455, 0
array2: .int 4173249519, 4164501372, 3625013300, 3082747115, 3051887845, 2787360833, 2139208308, 2067611435, 1867541359, 929409975, 402068719, 164109814, 0
mergedArray: .zero 34
