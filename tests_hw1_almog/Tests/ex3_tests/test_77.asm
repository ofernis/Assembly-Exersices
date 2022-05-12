
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4276685785, 0(%rax)
    jne bad_exit

    cmpl $4132176718, 4(%rax)
    jne bad_exit

    cmpl $4117236107, 8(%rax)
    jne bad_exit

    cmpl $4110592389, 12(%rax)
    jne bad_exit

    cmpl $4104451186, 16(%rax)
    jne bad_exit

    cmpl $3818802994, 20(%rax)
    jne bad_exit

    cmpl $3429273813, 24(%rax)
    jne bad_exit

    cmpl $3178473388, 28(%rax)
    jne bad_exit

    cmpl $2889744880, 32(%rax)
    jne bad_exit

    cmpl $2604782573, 36(%rax)
    jne bad_exit

    cmpl $2409996092, 40(%rax)
    jne bad_exit

    cmpl $2250405345, 44(%rax)
    jne bad_exit

    cmpl $2198357665, 48(%rax)
    jne bad_exit

    cmpl $2191115315, 52(%rax)
    jne bad_exit

    cmpl $2147964909, 56(%rax)
    jne bad_exit

    cmpl $2036092176, 60(%rax)
    jne bad_exit

    cmpl $2034507055, 64(%rax)
    jne bad_exit

    cmpl $1904932364, 68(%rax)
    jne bad_exit

    cmpl $1643967342, 72(%rax)
    jne bad_exit

    cmpl $1626316826, 76(%rax)
    jne bad_exit

    cmpl $1553881691, 80(%rax)
    jne bad_exit

    cmpl $1285020396, 84(%rax)
    jne bad_exit

    cmpl $1201545676, 88(%rax)
    jne bad_exit

    cmpl $1132484574, 92(%rax)
    jne bad_exit

    cmpl $990140903, 96(%rax)
    jne bad_exit

    cmpl $784354421, 100(%rax)
    jne bad_exit

    cmpl $687065305, 104(%rax)
    jne bad_exit

    cmpl $560879023, 108(%rax)
    jne bad_exit

    cmpl $536527676, 112(%rax)
    jne bad_exit

    cmpl $512256103, 116(%rax)
    jne bad_exit

    cmpl $407405646, 120(%rax)
    jne bad_exit

    cmpl $147491072, 124(%rax)
    jne bad_exit

    cmpl $125331938, 128(%rax)
    jne bad_exit

    cmpl $66940732, 132(%rax)
    jne bad_exit

    cmpl $59992913, 136(%rax)
    jne bad_exit

    cmpl $246538, 140(%rax)
    jne bad_exit

    cmpl $0, 144(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4276685785, 4132176718, 4110592389, 4104451186, 3429273813, 3178473388, 2604782573, 2409996092, 2250405345, 2198357665, 2191115315, 2147964909, 2036092176, 2034507055, 1904932364, 1643967342, 1553881691, 1285020396, 1201545676, 687065305, 560879023, 512256103, 407405646, 147491072, 125331938, 59992913, 246538, 0
array2: .int 4276685785, 4117236107, 3818802994, 3178473388, 2889744880, 2198357665, 2034507055, 1904932364, 1626316826, 1132484574, 990140903, 784354421, 560879023, 536527676, 66940732, 0
mergedArray: .zero 37
