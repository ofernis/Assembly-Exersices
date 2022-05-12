
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4193449178, 0(%rax)
    jne bad_exit

    cmpl $3757957434, 4(%rax)
    jne bad_exit

    cmpl $3755951103, 8(%rax)
    jne bad_exit

    cmpl $3622943640, 12(%rax)
    jne bad_exit

    cmpl $3386695770, 16(%rax)
    jne bad_exit

    cmpl $3174173938, 20(%rax)
    jne bad_exit

    cmpl $3086980660, 24(%rax)
    jne bad_exit

    cmpl $3079333629, 28(%rax)
    jne bad_exit

    cmpl $3003059654, 32(%rax)
    jne bad_exit

    cmpl $2890167306, 36(%rax)
    jne bad_exit

    cmpl $2864369293, 40(%rax)
    jne bad_exit

    cmpl $2813635577, 44(%rax)
    jne bad_exit

    cmpl $2780331619, 48(%rax)
    jne bad_exit

    cmpl $2771965814, 52(%rax)
    jne bad_exit

    cmpl $2723961976, 56(%rax)
    jne bad_exit

    cmpl $2609549473, 60(%rax)
    jne bad_exit

    cmpl $2573844988, 64(%rax)
    jne bad_exit

    cmpl $2474707642, 68(%rax)
    jne bad_exit

    cmpl $2345412078, 72(%rax)
    jne bad_exit

    cmpl $2262859248, 76(%rax)
    jne bad_exit

    cmpl $1962829919, 80(%rax)
    jne bad_exit

    cmpl $1958823696, 84(%rax)
    jne bad_exit

    cmpl $1677224770, 88(%rax)
    jne bad_exit

    cmpl $1449084493, 92(%rax)
    jne bad_exit

    cmpl $1410398050, 96(%rax)
    jne bad_exit

    cmpl $1384118728, 100(%rax)
    jne bad_exit

    cmpl $1376036964, 104(%rax)
    jne bad_exit

    cmpl $1141010785, 108(%rax)
    jne bad_exit

    cmpl $1118291482, 112(%rax)
    jne bad_exit

    cmpl $1030667917, 116(%rax)
    jne bad_exit

    cmpl $931276443, 120(%rax)
    jne bad_exit

    cmpl $910495681, 124(%rax)
    jne bad_exit

    cmpl $895536711, 128(%rax)
    jne bad_exit

    cmpl $805057447, 132(%rax)
    jne bad_exit

    cmpl $781297258, 136(%rax)
    jne bad_exit

    cmpl $758896688, 140(%rax)
    jne bad_exit

    cmpl $645483755, 144(%rax)
    jne bad_exit

    cmpl $603240868, 148(%rax)
    jne bad_exit

    cmpl $534444938, 152(%rax)
    jne bad_exit

    cmpl $526536064, 156(%rax)
    jne bad_exit

    cmpl $372766609, 160(%rax)
    jne bad_exit

    cmpl $284177553, 164(%rax)
    jne bad_exit

    cmpl $207131290, 168(%rax)
    jne bad_exit

    cmpl $32105208, 172(%rax)
    jne bad_exit

    cmpl $30769358, 176(%rax)
    jne bad_exit

    cmpl $18226258, 180(%rax)
    jne bad_exit

    cmpl $15228761, 184(%rax)
    jne bad_exit

    cmpl $8234733, 188(%rax)
    jne bad_exit

    cmpl $0, 192(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3757957434, 3386695770, 3174173938, 2864369293, 2780331619, 2771965814, 2723961976, 2573844988, 2474707642, 2345412078, 2262859248, 1958823696, 1449084493, 1410398050, 1376036964, 1141010785, 931276443, 910495681, 895536711, 758896688, 534444938, 526536064, 284177553, 207131290, 18226258, 15228761, 0
array2: .int 4193449178, 3755951103, 3622943640, 3086980660, 3079333629, 3003059654, 2890167306, 2813635577, 2723961976, 2609549473, 2573844988, 2345412078, 1962829919, 1677224770, 1384118728, 1376036964, 1118291482, 1030667917, 805057447, 781297258, 758896688, 645483755, 603240868, 534444938, 372766609, 32105208, 30769358, 8234733, 0
mergedArray: .zero 49
