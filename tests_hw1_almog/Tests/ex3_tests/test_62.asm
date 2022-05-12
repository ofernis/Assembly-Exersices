
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4279890706, 0(%rax)
    jne bad_exit

    cmpl $4071116783, 4(%rax)
    jne bad_exit

    cmpl $4003200223, 8(%rax)
    jne bad_exit

    cmpl $3798140301, 12(%rax)
    jne bad_exit

    cmpl $3614308200, 16(%rax)
    jne bad_exit

    cmpl $3566522067, 20(%rax)
    jne bad_exit

    cmpl $3523512806, 24(%rax)
    jne bad_exit

    cmpl $3496053145, 28(%rax)
    jne bad_exit

    cmpl $3492661439, 32(%rax)
    jne bad_exit

    cmpl $3320475154, 36(%rax)
    jne bad_exit

    cmpl $3304019761, 40(%rax)
    jne bad_exit

    cmpl $3257414111, 44(%rax)
    jne bad_exit

    cmpl $3255773572, 48(%rax)
    jne bad_exit

    cmpl $3246433993, 52(%rax)
    jne bad_exit

    cmpl $3233068697, 56(%rax)
    jne bad_exit

    cmpl $2932759790, 60(%rax)
    jne bad_exit

    cmpl $2626501161, 64(%rax)
    jne bad_exit

    cmpl $2572698484, 68(%rax)
    jne bad_exit

    cmpl $2452992527, 72(%rax)
    jne bad_exit

    cmpl $2238674998, 76(%rax)
    jne bad_exit

    cmpl $1373376583, 80(%rax)
    jne bad_exit

    cmpl $1369015567, 84(%rax)
    jne bad_exit

    cmpl $1345631970, 88(%rax)
    jne bad_exit

    cmpl $1099579504, 92(%rax)
    jne bad_exit

    cmpl $1032511493, 96(%rax)
    jne bad_exit

    cmpl $978564547, 100(%rax)
    jne bad_exit

    cmpl $801731542, 104(%rax)
    jne bad_exit

    cmpl $731888934, 108(%rax)
    jne bad_exit

    cmpl $687416958, 112(%rax)
    jne bad_exit

    cmpl $353858781, 116(%rax)
    jne bad_exit

    cmpl $219064270, 120(%rax)
    jne bad_exit

    cmpl $4522673, 124(%rax)
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
array1: .int 4279890706, 4071116783, 3798140301, 3614308200, 3566522067, 3523512806, 3496053145, 3492661439, 3304019761, 3257414111, 3255773572, 3246433993, 3233068697, 2932759790, 2626501161, 2572698484, 2452992527, 2238674998, 1373376583, 1369015567, 1345631970, 1099579504, 1032511493, 978564547, 801731542, 731888934, 687416958, 353858781, 219064270, 4522673, 0
array2: .int 4003200223, 3566522067, 3566522067, 3320475154, 3304019761, 3257414111, 3233068697, 2932759790, 2626501161, 1345631970, 1345631970, 0, 0, 0
mergedArray: .zero 33
