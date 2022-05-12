
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4097266624, 0(%rax)
    jne bad_exit

    cmpl $3987426107, 4(%rax)
    jne bad_exit

    cmpl $3964588907, 8(%rax)
    jne bad_exit

    cmpl $3889714190, 12(%rax)
    jne bad_exit

    cmpl $3684814148, 16(%rax)
    jne bad_exit

    cmpl $3283437817, 20(%rax)
    jne bad_exit

    cmpl $3280527427, 24(%rax)
    jne bad_exit

    cmpl $3054588602, 28(%rax)
    jne bad_exit

    cmpl $3017146950, 32(%rax)
    jne bad_exit

    cmpl $2990564418, 36(%rax)
    jne bad_exit

    cmpl $2802888241, 40(%rax)
    jne bad_exit

    cmpl $2684557301, 44(%rax)
    jne bad_exit

    cmpl $2679376369, 48(%rax)
    jne bad_exit

    cmpl $2549900303, 52(%rax)
    jne bad_exit

    cmpl $2405199417, 56(%rax)
    jne bad_exit

    cmpl $2334115789, 60(%rax)
    jne bad_exit

    cmpl $2182809436, 64(%rax)
    jne bad_exit

    cmpl $2174117880, 68(%rax)
    jne bad_exit

    cmpl $1990737163, 72(%rax)
    jne bad_exit

    cmpl $1989396007, 76(%rax)
    jne bad_exit

    cmpl $1960577345, 80(%rax)
    jne bad_exit

    cmpl $1747972922, 84(%rax)
    jne bad_exit

    cmpl $1738947980, 88(%rax)
    jne bad_exit

    cmpl $1676899426, 92(%rax)
    jne bad_exit

    cmpl $1643421183, 96(%rax)
    jne bad_exit

    cmpl $1484146425, 100(%rax)
    jne bad_exit

    cmpl $1478754883, 104(%rax)
    jne bad_exit

    cmpl $1451297879, 108(%rax)
    jne bad_exit

    cmpl $1416816075, 112(%rax)
    jne bad_exit

    cmpl $1316891159, 116(%rax)
    jne bad_exit

    cmpl $791689212, 120(%rax)
    jne bad_exit

    cmpl $784567538, 124(%rax)
    jne bad_exit

    cmpl $754178158, 128(%rax)
    jne bad_exit

    cmpl $736054171, 132(%rax)
    jne bad_exit

    cmpl $338069296, 136(%rax)
    jne bad_exit

    cmpl $335874646, 140(%rax)
    jne bad_exit

    cmpl $312890797, 144(%rax)
    jne bad_exit

    cmpl $154083829, 148(%rax)
    jne bad_exit

    cmpl $64850876, 152(%rax)
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
array1: .int 4097266624, 3964588907, 3889714190, 3684814148, 3280527427, 3054588602, 3017146950, 2802888241, 2679376369, 2549900303, 2334115789, 2182809436, 2174117880, 1990737163, 1989396007, 1960577345, 1738947980, 1484146425, 1478754883, 1451297879, 1416816075, 1316891159, 791689212, 784567538, 754178158, 736054171, 335874646, 64850876, 0
array2: .int 4097266624, 4097266624, 3987426107, 3283437817, 3054588602, 2990564418, 2802888241, 2684557301, 2405199417, 2174117880, 1960577345, 1747972922, 1738947980, 1676899426, 1643421183, 1416816075, 784567538, 338069296, 312890797, 154083829, 64850876, 0
mergedArray: .zero 40
