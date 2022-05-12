
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4223910583, 0(%rax)
    jne bad_exit

    cmpl $4085451892, 4(%rax)
    jne bad_exit

    cmpl $3871357147, 8(%rax)
    jne bad_exit

    cmpl $3715720739, 12(%rax)
    jne bad_exit

    cmpl $3697722628, 16(%rax)
    jne bad_exit

    cmpl $3455348459, 20(%rax)
    jne bad_exit

    cmpl $3294426585, 24(%rax)
    jne bad_exit

    cmpl $3276925273, 28(%rax)
    jne bad_exit

    cmpl $2886622342, 32(%rax)
    jne bad_exit

    cmpl $2566385720, 36(%rax)
    jne bad_exit

    cmpl $2547338928, 40(%rax)
    jne bad_exit

    cmpl $2540648485, 44(%rax)
    jne bad_exit

    cmpl $2529269380, 48(%rax)
    jne bad_exit

    cmpl $2471318187, 52(%rax)
    jne bad_exit

    cmpl $2073215581, 56(%rax)
    jne bad_exit

    cmpl $1981723689, 60(%rax)
    jne bad_exit

    cmpl $1793891363, 64(%rax)
    jne bad_exit

    cmpl $1409093663, 68(%rax)
    jne bad_exit

    cmpl $1376652235, 72(%rax)
    jne bad_exit

    cmpl $1222823380, 76(%rax)
    jne bad_exit

    cmpl $1188367198, 80(%rax)
    jne bad_exit

    cmpl $1183462198, 84(%rax)
    jne bad_exit

    cmpl $1075650844, 88(%rax)
    jne bad_exit

    cmpl $1063392156, 92(%rax)
    jne bad_exit

    cmpl $869726598, 96(%rax)
    jne bad_exit

    cmpl $364545644, 100(%rax)
    jne bad_exit

    cmpl $324713092, 104(%rax)
    jne bad_exit

    cmpl $223099393, 108(%rax)
    jne bad_exit

    cmpl $8265495, 112(%rax)
    jne bad_exit

    cmpl $0, 116(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4223910583, 4085451892, 3715720739, 3697722628, 3455348459, 3294426585, 2566385720, 2547338928, 2540648485, 2073215581, 1981723689, 1793891363, 1376652235, 1222823380, 1063392156, 869726598, 364545644, 324713092, 0
array2: .int 4085451892, 3871357147, 3715720739, 3697722628, 3455348459, 3294426585, 3276925273, 2886622342, 2566385720, 2566385720, 2566385720, 2547338928, 2547338928, 2529269380, 2471318187, 1981723689, 1981723689, 1409093663, 1222823380, 1188367198, 1183462198, 1075650844, 869726598, 364545644, 364545644, 324713092, 223099393, 8265495, 0, 0
mergedArray: .zero 30
