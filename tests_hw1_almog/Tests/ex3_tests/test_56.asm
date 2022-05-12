
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4189794351, 0(%rax)
    jne bad_exit

    cmpl $4165520606, 4(%rax)
    jne bad_exit

    cmpl $4138102063, 8(%rax)
    jne bad_exit

    cmpl $4121589012, 12(%rax)
    jne bad_exit

    cmpl $4068686379, 16(%rax)
    jne bad_exit

    cmpl $3992104567, 20(%rax)
    jne bad_exit

    cmpl $3975896105, 24(%rax)
    jne bad_exit

    cmpl $3240659566, 28(%rax)
    jne bad_exit

    cmpl $3137788286, 32(%rax)
    jne bad_exit

    cmpl $3083358412, 36(%rax)
    jne bad_exit

    cmpl $2998659837, 40(%rax)
    jne bad_exit

    cmpl $2696058766, 44(%rax)
    jne bad_exit

    cmpl $2630655292, 48(%rax)
    jne bad_exit

    cmpl $2414314002, 52(%rax)
    jne bad_exit

    cmpl $2378197079, 56(%rax)
    jne bad_exit

    cmpl $2333746597, 60(%rax)
    jne bad_exit

    cmpl $1890010117, 64(%rax)
    jne bad_exit

    cmpl $1849063647, 68(%rax)
    jne bad_exit

    cmpl $1709886016, 72(%rax)
    jne bad_exit

    cmpl $1589795537, 76(%rax)
    jne bad_exit

    cmpl $1561183688, 80(%rax)
    jne bad_exit

    cmpl $1484916882, 84(%rax)
    jne bad_exit

    cmpl $1271192045, 88(%rax)
    jne bad_exit

    cmpl $791807424, 92(%rax)
    jne bad_exit

    cmpl $766018697, 96(%rax)
    jne bad_exit

    cmpl $748331172, 100(%rax)
    jne bad_exit

    cmpl $657070086, 104(%rax)
    jne bad_exit

    cmpl $629166164, 108(%rax)
    jne bad_exit

    cmpl $621135076, 112(%rax)
    jne bad_exit

    cmpl $492489313, 116(%rax)
    jne bad_exit

    cmpl $389205235, 120(%rax)
    jne bad_exit

    cmpl $353670835, 124(%rax)
    jne bad_exit

    cmpl $264209579, 128(%rax)
    jne bad_exit

    cmpl $100904365, 132(%rax)
    jne bad_exit

    cmpl $34487930, 136(%rax)
    jne bad_exit

    cmpl $0, 140(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4189794351, 4138102063, 4121589012, 4068686379, 3992104567, 3975896105, 3240659566, 3137788286, 3083358412, 2998659837, 2696058766, 2630655292, 2414314002, 2378197079, 2333746597, 1890010117, 1709886016, 1589795537, 1561183688, 1484916882, 1271192045, 766018697, 748331172, 657070086, 629166164, 492489313, 389205235, 264209579, 100904365, 34487930, 0
array2: .int 4165520606, 4138102063, 3992104567, 3083358412, 2998659837, 2998659837, 2998659837, 2414314002, 2378197079, 2378197079, 2378197079, 2333746597, 1890010117, 1849063647, 1589795537, 1561183688, 791807424, 766018697, 748331172, 748331172, 621135076, 492489313, 353670835, 0
mergedArray: .zero 36
