
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4237291397, 0(%rax)
    jne bad_exit

    cmpl $4166518222, 4(%rax)
    jne bad_exit

    cmpl $4045389983, 8(%rax)
    jne bad_exit

    cmpl $3978559665, 12(%rax)
    jne bad_exit

    cmpl $3905036739, 16(%rax)
    jne bad_exit

    cmpl $3755057531, 20(%rax)
    jne bad_exit

    cmpl $3609519006, 24(%rax)
    jne bad_exit

    cmpl $3553391533, 28(%rax)
    jne bad_exit

    cmpl $3439223753, 32(%rax)
    jne bad_exit

    cmpl $3069211118, 36(%rax)
    jne bad_exit

    cmpl $3037043826, 40(%rax)
    jne bad_exit

    cmpl $2826975938, 44(%rax)
    jne bad_exit

    cmpl $2674092753, 48(%rax)
    jne bad_exit

    cmpl $2563922412, 52(%rax)
    jne bad_exit

    cmpl $2472386573, 56(%rax)
    jne bad_exit

    cmpl $2310611871, 60(%rax)
    jne bad_exit

    cmpl $2308676747, 64(%rax)
    jne bad_exit

    cmpl $2098380638, 68(%rax)
    jne bad_exit

    cmpl $2074831813, 72(%rax)
    jne bad_exit

    cmpl $2045372557, 76(%rax)
    jne bad_exit

    cmpl $1867820179, 80(%rax)
    jne bad_exit

    cmpl $1498380048, 84(%rax)
    jne bad_exit

    cmpl $1439318091, 88(%rax)
    jne bad_exit

    cmpl $1294779899, 92(%rax)
    jne bad_exit

    cmpl $1271230627, 96(%rax)
    jne bad_exit

    cmpl $1084278931, 100(%rax)
    jne bad_exit

    cmpl $916937480, 104(%rax)
    jne bad_exit

    cmpl $777808223, 108(%rax)
    jne bad_exit

    cmpl $707296270, 112(%rax)
    jne bad_exit

    cmpl $667664088, 116(%rax)
    jne bad_exit

    cmpl $584861136, 120(%rax)
    jne bad_exit

    cmpl $459719346, 124(%rax)
    jne bad_exit

    cmpl $402125230, 128(%rax)
    jne bad_exit

    cmpl $314172687, 132(%rax)
    jne bad_exit

    cmpl $302524851, 136(%rax)
    jne bad_exit

    cmpl $216163745, 140(%rax)
    jne bad_exit

    cmpl $119029026, 144(%rax)
    jne bad_exit

    cmpl $93721531, 148(%rax)
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
array1: .int 4237291397, 4166518222, 3978559665, 3905036739, 3439223753, 2310611871, 2308676747, 1439318091, 1294779899, 1271230627, 916937480, 777808223, 584861136, 93721531, 0
array2: .int 4045389983, 3755057531, 3609519006, 3553391533, 3069211118, 3037043826, 2826975938, 2674092753, 2563922412, 2472386573, 2098380638, 2074831813, 2045372557, 1867820179, 1498380048, 1084278931, 707296270, 667664088, 459719346, 402125230, 314172687, 302524851, 216163745, 119029026, 0
mergedArray: .zero 39
