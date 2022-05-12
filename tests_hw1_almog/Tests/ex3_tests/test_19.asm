
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4231268015, 0(%rax)
    jne bad_exit

    cmpl $4134809205, 4(%rax)
    jne bad_exit

    cmpl $4126955479, 8(%rax)
    jne bad_exit

    cmpl $4115461539, 12(%rax)
    jne bad_exit

    cmpl $3968591209, 16(%rax)
    jne bad_exit

    cmpl $3958922844, 20(%rax)
    jne bad_exit

    cmpl $3764899702, 24(%rax)
    jne bad_exit

    cmpl $3735304098, 28(%rax)
    jne bad_exit

    cmpl $3723087025, 32(%rax)
    jne bad_exit

    cmpl $3545666642, 36(%rax)
    jne bad_exit

    cmpl $3496363192, 40(%rax)
    jne bad_exit

    cmpl $3483691030, 44(%rax)
    jne bad_exit

    cmpl $3429971757, 48(%rax)
    jne bad_exit

    cmpl $3350997886, 52(%rax)
    jne bad_exit

    cmpl $3294036875, 56(%rax)
    jne bad_exit

    cmpl $2851702269, 60(%rax)
    jne bad_exit

    cmpl $2719396304, 64(%rax)
    jne bad_exit

    cmpl $2705221083, 68(%rax)
    jne bad_exit

    cmpl $2664140715, 72(%rax)
    jne bad_exit

    cmpl $2531185215, 76(%rax)
    jne bad_exit

    cmpl $2495683565, 80(%rax)
    jne bad_exit

    cmpl $2337438092, 84(%rax)
    jne bad_exit

    cmpl $2267151787, 88(%rax)
    jne bad_exit

    cmpl $2252495816, 92(%rax)
    jne bad_exit

    cmpl $1863017960, 96(%rax)
    jne bad_exit

    cmpl $1802368879, 100(%rax)
    jne bad_exit

    cmpl $1650368487, 104(%rax)
    jne bad_exit

    cmpl $1478561791, 108(%rax)
    jne bad_exit

    cmpl $1183659965, 112(%rax)
    jne bad_exit

    cmpl $979353188, 116(%rax)
    jne bad_exit

    cmpl $825105067, 120(%rax)
    jne bad_exit

    cmpl $608159275, 124(%rax)
    jne bad_exit

    cmpl $498842617, 128(%rax)
    jne bad_exit

    cmpl $359203202, 132(%rax)
    jne bad_exit

    cmpl $208668969, 136(%rax)
    jne bad_exit

    cmpl $183217247, 140(%rax)
    jne bad_exit

    cmpl $164785304, 144(%rax)
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
array1: .int 4231268015, 4134809205, 3958922844, 3545666642, 3429971757, 2705221083, 2495683565, 2267151787, 1183659965, 498842617, 208668969, 164785304, 0
array2: .int 4231268015, 4126955479, 4115461539, 3968591209, 3764899702, 3735304098, 3723087025, 3496363192, 3483691030, 3350997886, 3294036875, 2851702269, 2719396304, 2664140715, 2531185215, 2337438092, 2252495816, 1863017960, 1802368879, 1650368487, 1478561791, 979353188, 825105067, 608159275, 359203202, 183217247, 0
mergedArray: .zero 38
