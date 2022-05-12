
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4021741062, 0(%rax)
    jne bad_exit

    cmpl $3815592236, 4(%rax)
    jne bad_exit

    cmpl $3781971587, 8(%rax)
    jne bad_exit

    cmpl $3534301275, 12(%rax)
    jne bad_exit

    cmpl $3500017240, 16(%rax)
    jne bad_exit

    cmpl $3480287772, 20(%rax)
    jne bad_exit

    cmpl $3450080597, 24(%rax)
    jne bad_exit

    cmpl $3329484327, 28(%rax)
    jne bad_exit

    cmpl $3279059480, 32(%rax)
    jne bad_exit

    cmpl $3112969005, 36(%rax)
    jne bad_exit

    cmpl $3001028667, 40(%rax)
    jne bad_exit

    cmpl $2970034670, 44(%rax)
    jne bad_exit

    cmpl $2886614403, 48(%rax)
    jne bad_exit

    cmpl $2767069016, 52(%rax)
    jne bad_exit

    cmpl $2452556550, 56(%rax)
    jne bad_exit

    cmpl $2409247728, 60(%rax)
    jne bad_exit

    cmpl $2108252959, 64(%rax)
    jne bad_exit

    cmpl $1942478572, 68(%rax)
    jne bad_exit

    cmpl $1795435308, 72(%rax)
    jne bad_exit

    cmpl $1727099093, 76(%rax)
    jne bad_exit

    cmpl $1625908513, 80(%rax)
    jne bad_exit

    cmpl $1454902225, 84(%rax)
    jne bad_exit

    cmpl $1334130565, 88(%rax)
    jne bad_exit

    cmpl $1214330867, 92(%rax)
    jne bad_exit

    cmpl $1187604159, 96(%rax)
    jne bad_exit

    cmpl $901326515, 100(%rax)
    jne bad_exit

    cmpl $705494428, 104(%rax)
    jne bad_exit

    cmpl $672069737, 108(%rax)
    jne bad_exit

    cmpl $568426149, 112(%rax)
    jne bad_exit

    cmpl $528763548, 116(%rax)
    jne bad_exit

    cmpl $363883467, 120(%rax)
    jne bad_exit

    cmpl $340197022, 124(%rax)
    jne bad_exit

    cmpl $127675600, 128(%rax)
    jne bad_exit

    cmpl $0, 132(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4021741062, 3534301275, 3500017240, 3480287772, 3450080597, 3329484327, 3279059480, 3112969005, 3001028667, 2886614403, 2767069016, 2452556550, 2108252959, 1942478572, 1795435308, 1727099093, 1454902225, 1334130565, 1214330867, 901326515, 705494428, 568426149, 528763548, 363883467, 127675600, 0
array2: .int 4021741062, 3815592236, 3781971587, 2970034670, 2409247728, 1625908513, 1187604159, 672069737, 528763548, 340197022, 0, 0
mergedArray: .zero 34
