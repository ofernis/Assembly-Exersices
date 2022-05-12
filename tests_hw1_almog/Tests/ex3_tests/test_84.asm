
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4097213647, 0(%rax)
    jne bad_exit

    cmpl $3954199434, 4(%rax)
    jne bad_exit

    cmpl $3891361636, 8(%rax)
    jne bad_exit

    cmpl $3885564877, 12(%rax)
    jne bad_exit

    cmpl $3435152235, 16(%rax)
    jne bad_exit

    cmpl $3351508281, 20(%rax)
    jne bad_exit

    cmpl $2964250071, 24(%rax)
    jne bad_exit

    cmpl $2217771064, 28(%rax)
    jne bad_exit

    cmpl $2120048740, 32(%rax)
    jne bad_exit

    cmpl $2040790760, 36(%rax)
    jne bad_exit

    cmpl $1960534083, 40(%rax)
    jne bad_exit

    cmpl $1872500702, 44(%rax)
    jne bad_exit

    cmpl $1854781310, 48(%rax)
    jne bad_exit

    cmpl $1268305579, 52(%rax)
    jne bad_exit

    cmpl $1230543379, 56(%rax)
    jne bad_exit

    cmpl $1218898491, 60(%rax)
    jne bad_exit

    cmpl $876598680, 64(%rax)
    jne bad_exit

    cmpl $340341213, 68(%rax)
    jne bad_exit

    cmpl $334404114, 72(%rax)
    jne bad_exit

    cmpl $50890831, 76(%rax)
    jne bad_exit

    cmpl $48453637, 80(%rax)
    jne bad_exit

    cmpl $14310105, 84(%rax)
    jne bad_exit

    cmpl $0, 88(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4097213647, 3891361636, 3885564877, 3435152235, 2964250071, 2217771064, 2120048740, 2040790760, 1960534083, 1872500702, 1268305579, 1230543379, 1218898491, 876598680, 340341213, 334404114, 50890831, 48453637, 14310105, 0
array2: .int 3954199434, 3885564877, 3351508281, 2217771064, 2120048740, 2040790760, 1960534083, 1854781310, 1268305579, 1218898491, 334404114, 50890831, 50890831, 48453637, 0
mergedArray: .zero 23
