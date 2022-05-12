
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4236039782, 0(%rax)
    jne bad_exit

    cmpl $4211646702, 4(%rax)
    jne bad_exit

    cmpl $4001552304, 8(%rax)
    jne bad_exit

    cmpl $3930068160, 12(%rax)
    jne bad_exit

    cmpl $3864369570, 16(%rax)
    jne bad_exit

    cmpl $3518129480, 20(%rax)
    jne bad_exit

    cmpl $3465339290, 24(%rax)
    jne bad_exit

    cmpl $3303296276, 28(%rax)
    jne bad_exit

    cmpl $3186901155, 32(%rax)
    jne bad_exit

    cmpl $2863412829, 36(%rax)
    jne bad_exit

    cmpl $2619837800, 40(%rax)
    jne bad_exit

    cmpl $2138445785, 44(%rax)
    jne bad_exit

    cmpl $2118221486, 48(%rax)
    jne bad_exit

    cmpl $1818297158, 52(%rax)
    jne bad_exit

    cmpl $1663932324, 56(%rax)
    jne bad_exit

    cmpl $1647484084, 60(%rax)
    jne bad_exit

    cmpl $1455159291, 64(%rax)
    jne bad_exit

    cmpl $1268657319, 68(%rax)
    jne bad_exit

    cmpl $1056551241, 72(%rax)
    jne bad_exit

    cmpl $1008931151, 76(%rax)
    jne bad_exit

    cmpl $929502908, 80(%rax)
    jne bad_exit

    cmpl $818377219, 84(%rax)
    jne bad_exit

    cmpl $785837894, 88(%rax)
    jne bad_exit

    cmpl $511209326, 92(%rax)
    jne bad_exit

    cmpl $416286219, 96(%rax)
    jne bad_exit

    cmpl $397652472, 100(%rax)
    jne bad_exit

    cmpl $369527348, 104(%rax)
    jne bad_exit

    cmpl $344014378, 108(%rax)
    jne bad_exit

    cmpl $337696575, 112(%rax)
    jne bad_exit

    cmpl $171165237, 116(%rax)
    jne bad_exit

    cmpl $40352107, 120(%rax)
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
array1: .int 4236039782, 4211646702, 4001552304, 3930068160, 3864369570, 3518129480, 3465339290, 3303296276, 3186901155, 2863412829, 2619837800, 2138445785, 2118221486, 1818297158, 1663932324, 1455159291, 1268657319, 1056551241, 1008931151, 929502908, 818377219, 785837894, 511209326, 416286219, 397652472, 369527348, 344014378, 337696575, 171165237, 40352107, 0
array2: .int 4236039782, 4236039782, 4211646702, 4001552304, 4001552304, 3518129480, 2138445785, 1647484084, 1455159291, 1008931151, 929502908, 818377219, 785837894, 511209326, 416286219, 416286219, 397652472, 344014378, 337696575, 0, 0
mergedArray: .zero 32
