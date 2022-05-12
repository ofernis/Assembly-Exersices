
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3942196145, 0(%rax)
    jne bad_exit

    cmpl $3842761856, 4(%rax)
    jne bad_exit

    cmpl $3673850945, 8(%rax)
    jne bad_exit

    cmpl $3480677646, 12(%rax)
    jne bad_exit

    cmpl $3424518894, 16(%rax)
    jne bad_exit

    cmpl $2978616583, 20(%rax)
    jne bad_exit

    cmpl $2921710815, 24(%rax)
    jne bad_exit

    cmpl $2880668775, 28(%rax)
    jne bad_exit

    cmpl $2289473977, 32(%rax)
    jne bad_exit

    cmpl $2237310135, 36(%rax)
    jne bad_exit

    cmpl $1999228120, 40(%rax)
    jne bad_exit

    cmpl $1776360853, 44(%rax)
    jne bad_exit

    cmpl $1728025735, 48(%rax)
    jne bad_exit

    cmpl $1598277210, 52(%rax)
    jne bad_exit

    cmpl $1456454737, 56(%rax)
    jne bad_exit

    cmpl $1178371274, 60(%rax)
    jne bad_exit

    cmpl $676092576, 64(%rax)
    jne bad_exit

    cmpl $543319531, 68(%rax)
    jne bad_exit

    cmpl $533140225, 72(%rax)
    jne bad_exit

    cmpl $413477104, 76(%rax)
    jne bad_exit

    cmpl $386605795, 80(%rax)
    jne bad_exit

    cmpl $0, 84(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3942196145, 3842761856, 3673850945, 3480677646, 3424518894, 2978616583, 2880668775, 2289473977, 2237310135, 1776360853, 1728025735, 1598277210, 1456454737, 1178371274, 676092576, 543319531, 533140225, 413477104, 386605795, 0
array2: .int 3842761856, 3842761856, 3480677646, 2978616583, 2921710815, 2880668775, 2237310135, 1999228120, 1728025735, 413477104, 0
mergedArray: .zero 22
