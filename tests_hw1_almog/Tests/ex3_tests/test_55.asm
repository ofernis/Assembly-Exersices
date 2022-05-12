
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4239382748, 0(%rax)
    jne bad_exit

    cmpl $4235019478, 4(%rax)
    jne bad_exit

    cmpl $4125770064, 8(%rax)
    jne bad_exit

    cmpl $4111662993, 12(%rax)
    jne bad_exit

    cmpl $4016135951, 16(%rax)
    jne bad_exit

    cmpl $3999426900, 20(%rax)
    jne bad_exit

    cmpl $3843254703, 24(%rax)
    jne bad_exit

    cmpl $3732843609, 28(%rax)
    jne bad_exit

    cmpl $3414386094, 32(%rax)
    jne bad_exit

    cmpl $3128876908, 36(%rax)
    jne bad_exit

    cmpl $2890663943, 40(%rax)
    jne bad_exit

    cmpl $2860496931, 44(%rax)
    jne bad_exit

    cmpl $2632880494, 48(%rax)
    jne bad_exit

    cmpl $2484538930, 52(%rax)
    jne bad_exit

    cmpl $2366457413, 56(%rax)
    jne bad_exit

    cmpl $2321812774, 60(%rax)
    jne bad_exit

    cmpl $2318143526, 64(%rax)
    jne bad_exit

    cmpl $2235755349, 68(%rax)
    jne bad_exit

    cmpl $2199940375, 72(%rax)
    jne bad_exit

    cmpl $2056114385, 76(%rax)
    jne bad_exit

    cmpl $2050526155, 80(%rax)
    jne bad_exit

    cmpl $1982275508, 84(%rax)
    jne bad_exit

    cmpl $1952670678, 88(%rax)
    jne bad_exit

    cmpl $1927788050, 92(%rax)
    jne bad_exit

    cmpl $1900006149, 96(%rax)
    jne bad_exit

    cmpl $1723518659, 100(%rax)
    jne bad_exit

    cmpl $1693250833, 104(%rax)
    jne bad_exit

    cmpl $1660867012, 108(%rax)
    jne bad_exit

    cmpl $1513601395, 112(%rax)
    jne bad_exit

    cmpl $1467273751, 116(%rax)
    jne bad_exit

    cmpl $1458171142, 120(%rax)
    jne bad_exit

    cmpl $1307612972, 124(%rax)
    jne bad_exit

    cmpl $1155982047, 128(%rax)
    jne bad_exit

    cmpl $947750042, 132(%rax)
    jne bad_exit

    cmpl $750473868, 136(%rax)
    jne bad_exit

    cmpl $575958734, 140(%rax)
    jne bad_exit

    cmpl $367532498, 144(%rax)
    jne bad_exit

    cmpl $103489810, 148(%rax)
    jne bad_exit

    cmpl $60216375, 152(%rax)
    jne bad_exit

    cmpl $0, 156(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4239382748, 4125770064, 3732843609, 2890663943, 2632880494, 2235755349, 2056114385, 1900006149, 1660867012, 1458171142, 1307612972, 750473868, 0
array2: .int 4235019478, 4125770064, 4111662993, 4016135951, 3999426900, 3843254703, 3732843609, 3414386094, 3128876908, 2860496931, 2632880494, 2484538930, 2366457413, 2321812774, 2318143526, 2199940375, 2050526155, 1982275508, 1952670678, 1927788050, 1723518659, 1693250833, 1513601395, 1467273751, 1155982047, 947750042, 575958734, 367532498, 103489810, 60216375, 0
mergedArray: .zero 40
