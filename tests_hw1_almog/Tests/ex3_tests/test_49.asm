
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4291356356, 0(%rax)
    jne bad_exit

    cmpl $4182600360, 4(%rax)
    jne bad_exit

    cmpl $4150406133, 8(%rax)
    jne bad_exit

    cmpl $4052343856, 12(%rax)
    jne bad_exit

    cmpl $4001771292, 16(%rax)
    jne bad_exit

    cmpl $3963727063, 20(%rax)
    jne bad_exit

    cmpl $3861086347, 24(%rax)
    jne bad_exit

    cmpl $3753867010, 28(%rax)
    jne bad_exit

    cmpl $3645521993, 32(%rax)
    jne bad_exit

    cmpl $3587253674, 36(%rax)
    jne bad_exit

    cmpl $3347707757, 40(%rax)
    jne bad_exit

    cmpl $3285087969, 44(%rax)
    jne bad_exit

    cmpl $3265094912, 48(%rax)
    jne bad_exit

    cmpl $3096304926, 52(%rax)
    jne bad_exit

    cmpl $3058041372, 56(%rax)
    jne bad_exit

    cmpl $3026294387, 60(%rax)
    jne bad_exit

    cmpl $2970587772, 64(%rax)
    jne bad_exit

    cmpl $2893254855, 68(%rax)
    jne bad_exit

    cmpl $2835916056, 72(%rax)
    jne bad_exit

    cmpl $2578229956, 76(%rax)
    jne bad_exit

    cmpl $2475743174, 80(%rax)
    jne bad_exit

    cmpl $2122491614, 84(%rax)
    jne bad_exit

    cmpl $1934355332, 88(%rax)
    jne bad_exit

    cmpl $1657784085, 92(%rax)
    jne bad_exit

    cmpl $1517583285, 96(%rax)
    jne bad_exit

    cmpl $1341229985, 100(%rax)
    jne bad_exit

    cmpl $964205031, 104(%rax)
    jne bad_exit

    cmpl $923869858, 108(%rax)
    jne bad_exit

    cmpl $913920567, 112(%rax)
    jne bad_exit

    cmpl $791972485, 116(%rax)
    jne bad_exit

    cmpl $625916959, 120(%rax)
    jne bad_exit

    cmpl $516065169, 124(%rax)
    jne bad_exit

    cmpl $510692147, 128(%rax)
    jne bad_exit

    cmpl $386777171, 132(%rax)
    jne bad_exit

    cmpl $313201758, 136(%rax)
    jne bad_exit

    cmpl $221283266, 140(%rax)
    jne bad_exit

    cmpl $138101952, 144(%rax)
    jne bad_exit

    cmpl $4112700, 148(%rax)
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
array1: .int 4150406133, 4052343856, 4001771292, 3963727063, 3645521993, 3587253674, 3285087969, 3096304926, 3026294387, 2578229956, 1934355332, 1517583285, 1341229985, 386777171, 221283266, 138101952, 4112700, 0
array2: .int 4291356356, 4182600360, 4052343856, 3861086347, 3753867010, 3347707757, 3265094912, 3058041372, 2970587772, 2893254855, 2835916056, 2475743174, 2122491614, 1657784085, 1341229985, 964205031, 923869858, 913920567, 791972485, 625916959, 516065169, 510692147, 313201758, 0
mergedArray: .zero 39
