
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4221100849, 0(%rax)
    jne bad_exit

    cmpl $4058280708, 4(%rax)
    jne bad_exit

    cmpl $3995264506, 8(%rax)
    jne bad_exit

    cmpl $3816419942, 12(%rax)
    jne bad_exit

    cmpl $3747466330, 16(%rax)
    jne bad_exit

    cmpl $3545916412, 20(%rax)
    jne bad_exit

    cmpl $3425169867, 24(%rax)
    jne bad_exit

    cmpl $3388950473, 28(%rax)
    jne bad_exit

    cmpl $3332563296, 32(%rax)
    jne bad_exit

    cmpl $3294028222, 36(%rax)
    jne bad_exit

    cmpl $3253179014, 40(%rax)
    jne bad_exit

    cmpl $3126580801, 44(%rax)
    jne bad_exit

    cmpl $2971557556, 48(%rax)
    jne bad_exit

    cmpl $2763056913, 52(%rax)
    jne bad_exit

    cmpl $2549687046, 56(%rax)
    jne bad_exit

    cmpl $2059801088, 60(%rax)
    jne bad_exit

    cmpl $2003000488, 64(%rax)
    jne bad_exit

    cmpl $1775299673, 68(%rax)
    jne bad_exit

    cmpl $1724853319, 72(%rax)
    jne bad_exit

    cmpl $1605200742, 76(%rax)
    jne bad_exit

    cmpl $1550655672, 80(%rax)
    jne bad_exit

    cmpl $1445033674, 84(%rax)
    jne bad_exit

    cmpl $1410390956, 88(%rax)
    jne bad_exit

    cmpl $1374444677, 92(%rax)
    jne bad_exit

    cmpl $1357445369, 96(%rax)
    jne bad_exit

    cmpl $1208239697, 100(%rax)
    jne bad_exit

    cmpl $1120352751, 104(%rax)
    jne bad_exit

    cmpl $698744649, 108(%rax)
    jne bad_exit

    cmpl $594425375, 112(%rax)
    jne bad_exit

    cmpl $531728015, 116(%rax)
    jne bad_exit

    cmpl $371629398, 120(%rax)
    jne bad_exit

    cmpl $273662978, 124(%rax)
    jne bad_exit

    cmpl $0, 128(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4221100849, 4058280708, 3816419942, 3545916412, 3388950473, 3332563296, 3126580801, 2971557556, 2763056913, 2549687046, 2059801088, 2003000488, 1775299673, 1724853319, 1445033674, 1374444677, 1357445369, 1208239697, 698744649, 594425375, 371629398, 273662978, 0
array2: .int 3995264506, 3747466330, 3425169867, 3294028222, 3253179014, 1605200742, 1550655672, 1410390956, 1374444677, 1120352751, 531728015, 0
mergedArray: .zero 33
