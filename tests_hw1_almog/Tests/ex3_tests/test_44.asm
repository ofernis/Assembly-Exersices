
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4275948020, 0(%rax)
    jne bad_exit

    cmpl $4268019689, 4(%rax)
    jne bad_exit

    cmpl $3911900338, 8(%rax)
    jne bad_exit

    cmpl $3800568930, 12(%rax)
    jne bad_exit

    cmpl $3400053504, 16(%rax)
    jne bad_exit

    cmpl $3354578710, 20(%rax)
    jne bad_exit

    cmpl $3330755074, 24(%rax)
    jne bad_exit

    cmpl $3084644939, 28(%rax)
    jne bad_exit

    cmpl $2946144352, 32(%rax)
    jne bad_exit

    cmpl $2934614049, 36(%rax)
    jne bad_exit

    cmpl $2910241198, 40(%rax)
    jne bad_exit

    cmpl $2875338641, 44(%rax)
    jne bad_exit

    cmpl $2871699300, 48(%rax)
    jne bad_exit

    cmpl $2759385264, 52(%rax)
    jne bad_exit

    cmpl $2558350521, 56(%rax)
    jne bad_exit

    cmpl $2356043033, 60(%rax)
    jne bad_exit

    cmpl $2335271058, 64(%rax)
    jne bad_exit

    cmpl $2177086304, 68(%rax)
    jne bad_exit

    cmpl $2125349445, 72(%rax)
    jne bad_exit

    cmpl $2088691383, 76(%rax)
    jne bad_exit

    cmpl $2069511110, 80(%rax)
    jne bad_exit

    cmpl $1979416228, 84(%rax)
    jne bad_exit

    cmpl $1807091803, 88(%rax)
    jne bad_exit

    cmpl $1349801847, 92(%rax)
    jne bad_exit

    cmpl $1232355532, 96(%rax)
    jne bad_exit

    cmpl $736866077, 100(%rax)
    jne bad_exit

    cmpl $682643424, 104(%rax)
    jne bad_exit

    cmpl $650776263, 108(%rax)
    jne bad_exit

    cmpl $474740755, 112(%rax)
    jne bad_exit

    cmpl $122702759, 116(%rax)
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
array1: .int 4275948020, 3911900338, 3800568930, 3400053504, 3354578710, 3330755074, 3084644939, 2946144352, 2910241198, 2871699300, 2558350521, 2356043033, 2335271058, 2088691383, 1807091803, 1349801847, 1232355532, 736866077, 682643424, 474740755, 122702759, 0
array2: .int 4268019689, 2934614049, 2875338641, 2759385264, 2177086304, 2125349445, 2069511110, 1979416228, 650776263, 474740755, 0
mergedArray: .zero 31
