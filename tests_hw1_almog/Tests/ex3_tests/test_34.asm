
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4284869858, 0(%rax)
    jne bad_exit

    cmpl $4271988520, 4(%rax)
    jne bad_exit

    cmpl $4111932078, 8(%rax)
    jne bad_exit

    cmpl $4054693221, 12(%rax)
    jne bad_exit

    cmpl $4037633833, 16(%rax)
    jne bad_exit

    cmpl $3912580207, 20(%rax)
    jne bad_exit

    cmpl $3662441374, 24(%rax)
    jne bad_exit

    cmpl $3603832467, 28(%rax)
    jne bad_exit

    cmpl $3524699301, 32(%rax)
    jne bad_exit

    cmpl $3503759828, 36(%rax)
    jne bad_exit

    cmpl $3239926395, 40(%rax)
    jne bad_exit

    cmpl $2988828745, 44(%rax)
    jne bad_exit

    cmpl $2941833213, 48(%rax)
    jne bad_exit

    cmpl $2900017643, 52(%rax)
    jne bad_exit

    cmpl $2860744817, 56(%rax)
    jne bad_exit

    cmpl $2713203217, 60(%rax)
    jne bad_exit

    cmpl $2455969088, 64(%rax)
    jne bad_exit

    cmpl $2443041647, 68(%rax)
    jne bad_exit

    cmpl $2399568377, 72(%rax)
    jne bad_exit

    cmpl $2363659825, 76(%rax)
    jne bad_exit

    cmpl $1994996899, 80(%rax)
    jne bad_exit

    cmpl $1991657637, 84(%rax)
    jne bad_exit

    cmpl $1945959403, 88(%rax)
    jne bad_exit

    cmpl $1676321931, 92(%rax)
    jne bad_exit

    cmpl $1506890284, 96(%rax)
    jne bad_exit

    cmpl $1482828136, 100(%rax)
    jne bad_exit

    cmpl $1386916511, 104(%rax)
    jne bad_exit

    cmpl $1372448228, 108(%rax)
    jne bad_exit

    cmpl $1357622684, 112(%rax)
    jne bad_exit

    cmpl $1330212907, 116(%rax)
    jne bad_exit

    cmpl $1072949673, 120(%rax)
    jne bad_exit

    cmpl $841134900, 124(%rax)
    jne bad_exit

    cmpl $696470418, 128(%rax)
    jne bad_exit

    cmpl $583796583, 132(%rax)
    jne bad_exit

    cmpl $556047447, 136(%rax)
    jne bad_exit

    cmpl $545982713, 140(%rax)
    jne bad_exit

    cmpl $213963867, 144(%rax)
    jne bad_exit

    cmpl $0, 148(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4284869858, 3912580207, 3603832467, 3503759828, 2860744817, 2455969088, 2443041647, 2363659825, 1994996899, 1945959403, 1506890284, 1482828136, 1386916511, 1372448228, 1072949673, 841134900, 696470418, 556047447, 213963867, 0
array2: .int 4271988520, 4111932078, 4054693221, 4037633833, 3912580207, 3662441374, 3524699301, 3503759828, 3503759828, 3239926395, 2988828745, 2941833213, 2900017643, 2713203217, 2443041647, 2443041647, 2399568377, 1991657637, 1945959403, 1676321931, 1506890284, 1357622684, 1330212907, 1072949673, 841134900, 583796583, 556047447, 556047447, 545982713, 0, 0
mergedArray: .zero 38
