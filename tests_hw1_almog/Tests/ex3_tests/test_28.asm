
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4161825449, 0(%rax)
    jne bad_exit

    cmpl $4113825248, 4(%rax)
    jne bad_exit

    cmpl $3920841089, 8(%rax)
    jne bad_exit

    cmpl $3784966847, 12(%rax)
    jne bad_exit

    cmpl $3713571109, 16(%rax)
    jne bad_exit

    cmpl $3649921363, 20(%rax)
    jne bad_exit

    cmpl $3348881249, 24(%rax)
    jne bad_exit

    cmpl $2921281568, 28(%rax)
    jne bad_exit

    cmpl $2574945817, 32(%rax)
    jne bad_exit

    cmpl $2439821121, 36(%rax)
    jne bad_exit

    cmpl $2397836740, 40(%rax)
    jne bad_exit

    cmpl $2155578773, 44(%rax)
    jne bad_exit

    cmpl $1710381665, 48(%rax)
    jne bad_exit

    cmpl $1447534283, 52(%rax)
    jne bad_exit

    cmpl $1428327909, 56(%rax)
    jne bad_exit

    cmpl $1391091712, 60(%rax)
    jne bad_exit

    cmpl $1361016626, 64(%rax)
    jne bad_exit

    cmpl $1326450694, 68(%rax)
    jne bad_exit

    cmpl $1162326163, 72(%rax)
    jne bad_exit

    cmpl $838440129, 76(%rax)
    jne bad_exit

    cmpl $671468044, 80(%rax)
    jne bad_exit

    cmpl $372103652, 84(%rax)
    jne bad_exit

    cmpl $268500159, 88(%rax)
    jne bad_exit

    cmpl $42501633, 92(%rax)
    jne bad_exit

    cmpl $0, 96(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4161825449, 3713571109, 3348881249, 2574945817, 2439821121, 2397836740, 1710381665, 1447534283, 1428327909, 1391091712, 1361016626, 671468044, 372103652, 268500159, 42501633, 0
array2: .int 4113825248, 3920841089, 3784966847, 3713571109, 3649921363, 3348881249, 2921281568, 2439821121, 2155578773, 1326450694, 1162326163, 838440129, 42501633, 42501633, 0, 0
mergedArray: .zero 25
