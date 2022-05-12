
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4231345888, 0(%rax)
    jne bad_exit

    cmpl $4104481536, 4(%rax)
    jne bad_exit

    cmpl $3954901917, 8(%rax)
    jne bad_exit

    cmpl $3919924368, 12(%rax)
    jne bad_exit

    cmpl $3777197287, 16(%rax)
    jne bad_exit

    cmpl $3500494164, 20(%rax)
    jne bad_exit

    cmpl $3469460247, 24(%rax)
    jne bad_exit

    cmpl $3428820441, 28(%rax)
    jne bad_exit

    cmpl $3402745980, 32(%rax)
    jne bad_exit

    cmpl $3295117421, 36(%rax)
    jne bad_exit

    cmpl $3263522476, 40(%rax)
    jne bad_exit

    cmpl $3114455492, 44(%rax)
    jne bad_exit

    cmpl $3110411434, 48(%rax)
    jne bad_exit

    cmpl $2860565401, 52(%rax)
    jne bad_exit

    cmpl $2829015380, 56(%rax)
    jne bad_exit

    cmpl $2709032362, 60(%rax)
    jne bad_exit

    cmpl $2661759167, 64(%rax)
    jne bad_exit

    cmpl $2441175894, 68(%rax)
    jne bad_exit

    cmpl $2435578291, 72(%rax)
    jne bad_exit

    cmpl $2397368371, 76(%rax)
    jne bad_exit

    cmpl $2365467804, 80(%rax)
    jne bad_exit

    cmpl $1999454356, 84(%rax)
    jne bad_exit

    cmpl $1964393287, 88(%rax)
    jne bad_exit

    cmpl $1890872060, 92(%rax)
    jne bad_exit

    cmpl $1804651294, 96(%rax)
    jne bad_exit

    cmpl $1731585107, 100(%rax)
    jne bad_exit

    cmpl $1636533278, 104(%rax)
    jne bad_exit

    cmpl $1402511077, 108(%rax)
    jne bad_exit

    cmpl $1270223676, 112(%rax)
    jne bad_exit

    cmpl $1186317222, 116(%rax)
    jne bad_exit

    cmpl $1152106567, 120(%rax)
    jne bad_exit

    cmpl $1117252643, 124(%rax)
    jne bad_exit

    cmpl $985732878, 128(%rax)
    jne bad_exit

    cmpl $984656431, 132(%rax)
    jne bad_exit

    cmpl $519208911, 136(%rax)
    jne bad_exit

    cmpl $456087422, 140(%rax)
    jne bad_exit

    cmpl $441003690, 144(%rax)
    jne bad_exit

    cmpl $415000915, 148(%rax)
    jne bad_exit

    cmpl $129966817, 152(%rax)
    jne bad_exit

    cmpl $26825632, 156(%rax)
    jne bad_exit

    cmpl $0, 160(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4231345888, 4104481536, 3954901917, 3919924368, 3500494164, 3469460247, 3428820441, 3402745980, 3295117421, 3110411434, 2860565401, 2829015380, 2709032362, 2661759167, 2441175894, 2435578291, 1999454356, 1890872060, 1804651294, 1731585107, 1402511077, 1270223676, 1186317222, 1152106567, 1117252643, 985732878, 519208911, 441003690, 129966817, 0
array2: .int 3919924368, 3919924368, 3777197287, 3295117421, 3263522476, 3114455492, 2829015380, 2435578291, 2435578291, 2397368371, 2365467804, 1999454356, 1964393287, 1731585107, 1636533278, 1270223676, 1270223676, 1186317222, 984656431, 456087422, 441003690, 415000915, 129966817, 26825632, 0, 0, 0
mergedArray: .zero 41
