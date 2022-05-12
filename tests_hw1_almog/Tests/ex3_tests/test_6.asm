
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4289937568, 0(%rax)
    jne bad_exit

    cmpl $4279948654, 4(%rax)
    jne bad_exit

    cmpl $4239289979, 8(%rax)
    jne bad_exit

    cmpl $4036845892, 12(%rax)
    jne bad_exit

    cmpl $4011851919, 16(%rax)
    jne bad_exit

    cmpl $3990212103, 20(%rax)
    jne bad_exit

    cmpl $3803229205, 24(%rax)
    jne bad_exit

    cmpl $3758462004, 28(%rax)
    jne bad_exit

    cmpl $3578749367, 32(%rax)
    jne bad_exit

    cmpl $3545430613, 36(%rax)
    jne bad_exit

    cmpl $3522642961, 40(%rax)
    jne bad_exit

    cmpl $3437318854, 44(%rax)
    jne bad_exit

    cmpl $3304246465, 48(%rax)
    jne bad_exit

    cmpl $3232714773, 52(%rax)
    jne bad_exit

    cmpl $3165149490, 56(%rax)
    jne bad_exit

    cmpl $2884598480, 60(%rax)
    jne bad_exit

    cmpl $2753703579, 64(%rax)
    jne bad_exit

    cmpl $2705077898, 68(%rax)
    jne bad_exit

    cmpl $2700240823, 72(%rax)
    jne bad_exit

    cmpl $2279468913, 76(%rax)
    jne bad_exit

    cmpl $2154691221, 80(%rax)
    jne bad_exit

    cmpl $2052465886, 84(%rax)
    jne bad_exit

    cmpl $2024493726, 88(%rax)
    jne bad_exit

    cmpl $1897844176, 92(%rax)
    jne bad_exit

    cmpl $1897707309, 96(%rax)
    jne bad_exit

    cmpl $1706821795, 100(%rax)
    jne bad_exit

    cmpl $1574794273, 104(%rax)
    jne bad_exit

    cmpl $1508571940, 108(%rax)
    jne bad_exit

    cmpl $1477941277, 112(%rax)
    jne bad_exit

    cmpl $1364757115, 116(%rax)
    jne bad_exit

    cmpl $1326671291, 120(%rax)
    jne bad_exit

    cmpl $1310323139, 124(%rax)
    jne bad_exit

    cmpl $1180177989, 128(%rax)
    jne bad_exit

    cmpl $1125584256, 132(%rax)
    jne bad_exit

    cmpl $1009441952, 136(%rax)
    jne bad_exit

    cmpl $614405736, 140(%rax)
    jne bad_exit

    cmpl $589930782, 144(%rax)
    jne bad_exit

    cmpl $574961950, 148(%rax)
    jne bad_exit

    cmpl $456601458, 152(%rax)
    jne bad_exit

    cmpl $298087027, 156(%rax)
    jne bad_exit

    cmpl $152266922, 160(%rax)
    jne bad_exit

    cmpl $144364812, 164(%rax)
    jne bad_exit

    cmpl $108572382, 168(%rax)
    jne bad_exit

    cmpl $104716551, 172(%rax)
    jne bad_exit

    cmpl $0, 176(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4289937568, 4279948654, 4011851919, 3990212103, 3803229205, 3758462004, 3437318854, 3304246465, 3232714773, 3165149490, 2884598480, 2753703579, 2700240823, 2279468913, 2154691221, 2052465886, 2024493726, 1897844176, 1897707309, 1364757115, 1326671291, 1125584256, 614405736, 589930782, 574961950, 456601458, 298087027, 144364812, 108572382, 0
array2: .int 4239289979, 4036845892, 4011851919, 3758462004, 3578749367, 3545430613, 3522642961, 3165149490, 3165149490, 3165149490, 2705077898, 2700240823, 2024493726, 2024493726, 1706821795, 1574794273, 1508571940, 1477941277, 1326671291, 1310323139, 1180177989, 1009441952, 614405736, 589930782, 152266922, 104716551, 0
mergedArray: .zero 45
