
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4222061714, 0(%rax)
    jne bad_exit

    cmpl $4145862858, 4(%rax)
    jne bad_exit

    cmpl $4125211449, 8(%rax)
    jne bad_exit

    cmpl $3958258340, 12(%rax)
    jne bad_exit

    cmpl $3951170980, 16(%rax)
    jne bad_exit

    cmpl $3702881494, 20(%rax)
    jne bad_exit

    cmpl $3610496823, 24(%rax)
    jne bad_exit

    cmpl $3491979459, 28(%rax)
    jne bad_exit

    cmpl $3213884550, 32(%rax)
    jne bad_exit

    cmpl $3120238594, 36(%rax)
    jne bad_exit

    cmpl $2878001812, 40(%rax)
    jne bad_exit

    cmpl $2663866250, 44(%rax)
    jne bad_exit

    cmpl $2646503493, 48(%rax)
    jne bad_exit

    cmpl $2608085145, 52(%rax)
    jne bad_exit

    cmpl $2115975034, 56(%rax)
    jne bad_exit

    cmpl $1983985324, 60(%rax)
    jne bad_exit

    cmpl $1955366163, 64(%rax)
    jne bad_exit

    cmpl $1893117574, 68(%rax)
    jne bad_exit

    cmpl $1712210427, 72(%rax)
    jne bad_exit

    cmpl $1675302549, 76(%rax)
    jne bad_exit

    cmpl $1492453703, 80(%rax)
    jne bad_exit

    cmpl $1351510388, 84(%rax)
    jne bad_exit

    cmpl $1010862794, 88(%rax)
    jne bad_exit

    cmpl $988047753, 92(%rax)
    jne bad_exit

    cmpl $829585286, 96(%rax)
    jne bad_exit

    cmpl $694746708, 100(%rax)
    jne bad_exit

    cmpl $613658430, 104(%rax)
    jne bad_exit

    cmpl $200685318, 108(%rax)
    jne bad_exit

    cmpl $166482286, 112(%rax)
    jne bad_exit

    cmpl $136627918, 116(%rax)
    jne bad_exit

    cmpl $115080565, 120(%rax)
    jne bad_exit

    cmpl $0, 124(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4222061714, 4145862858, 4125211449, 3958258340, 3951170980, 3702881494, 3610496823, 3491979459, 3213884550, 3120238594, 2878001812, 2663866250, 2646503493, 2608085145, 2115975034, 1983985324, 1955366163, 1893117574, 1712210427, 1675302549, 1492453703, 1010862794, 988047753, 829585286, 694746708, 613658430, 200685318, 166482286, 136627918, 115080565, 0
array2: .int 3491979459, 3491979459, 3491979459, 3120238594, 2646503493, 2608085145, 1712210427, 1351510388, 988047753, 694746708, 613658430, 200685318, 136627918, 115080565, 0
mergedArray: .zero 32
