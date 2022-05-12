
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4273642966, 0(%rax)
    jne bad_exit

    cmpl $4088111313, 4(%rax)
    jne bad_exit

    cmpl $3934483960, 8(%rax)
    jne bad_exit

    cmpl $3688392295, 12(%rax)
    jne bad_exit

    cmpl $3687633196, 16(%rax)
    jne bad_exit

    cmpl $3527121326, 20(%rax)
    jne bad_exit

    cmpl $3376218836, 24(%rax)
    jne bad_exit

    cmpl $2995139874, 28(%rax)
    jne bad_exit

    cmpl $2831559663, 32(%rax)
    jne bad_exit

    cmpl $2782215100, 36(%rax)
    jne bad_exit

    cmpl $2727159274, 40(%rax)
    jne bad_exit

    cmpl $2660048061, 44(%rax)
    jne bad_exit

    cmpl $2631757581, 48(%rax)
    jne bad_exit

    cmpl $2571427673, 52(%rax)
    jne bad_exit

    cmpl $2538310989, 56(%rax)
    jne bad_exit

    cmpl $2350520865, 60(%rax)
    jne bad_exit

    cmpl $2315815568, 64(%rax)
    jne bad_exit

    cmpl $2152357814, 68(%rax)
    jne bad_exit

    cmpl $2120013583, 72(%rax)
    jne bad_exit

    cmpl $2053550949, 76(%rax)
    jne bad_exit

    cmpl $1889735968, 80(%rax)
    jne bad_exit

    cmpl $1522595940, 84(%rax)
    jne bad_exit

    cmpl $1452874741, 88(%rax)
    jne bad_exit

    cmpl $1254077078, 92(%rax)
    jne bad_exit

    cmpl $1165195076, 96(%rax)
    jne bad_exit

    cmpl $1149198432, 100(%rax)
    jne bad_exit

    cmpl $1028247559, 104(%rax)
    jne bad_exit

    cmpl $1027589858, 108(%rax)
    jne bad_exit

    cmpl $1017701913, 112(%rax)
    jne bad_exit

    cmpl $1002522955, 116(%rax)
    jne bad_exit

    cmpl $913121434, 120(%rax)
    jne bad_exit

    cmpl $581594547, 124(%rax)
    jne bad_exit

    cmpl $532527046, 128(%rax)
    jne bad_exit

    cmpl $333046881, 132(%rax)
    jne bad_exit

    cmpl $282542333, 136(%rax)
    jne bad_exit

    cmpl $191715994, 140(%rax)
    jne bad_exit

    cmpl $119810437, 144(%rax)
    jne bad_exit

    cmpl $0, 148(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4088111313, 2995139874, 2782215100, 2538310989, 2120013583, 2053550949, 1522595940, 1254077078, 1165195076, 1149198432, 581594547, 532527046, 191715994, 0
array2: .int 4273642966, 3934483960, 3688392295, 3687633196, 3527121326, 3376218836, 2831559663, 2727159274, 2660048061, 2631757581, 2571427673, 2538310989, 2538310989, 2350520865, 2315815568, 2152357814, 1889735968, 1452874741, 1254077078, 1028247559, 1027589858, 1017701913, 1002522955, 913121434, 581594547, 532527046, 333046881, 282542333, 119810437, 0
mergedArray: .zero 38
