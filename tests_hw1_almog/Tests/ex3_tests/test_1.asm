
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3938153337, 0(%rax)
    jne bad_exit

    cmpl $3921428393, 4(%rax)
    jne bad_exit

    cmpl $3860874895, 8(%rax)
    jne bad_exit

    cmpl $3793010036, 12(%rax)
    jne bad_exit

    cmpl $3728920121, 16(%rax)
    jne bad_exit

    cmpl $3652968237, 20(%rax)
    jne bad_exit

    cmpl $2810665667, 24(%rax)
    jne bad_exit

    cmpl $2734063791, 28(%rax)
    jne bad_exit

    cmpl $2534193645, 32(%rax)
    jne bad_exit

    cmpl $2311096085, 36(%rax)
    jne bad_exit

    cmpl $2083910944, 40(%rax)
    jne bad_exit

    cmpl $2062799482, 44(%rax)
    jne bad_exit

    cmpl $2046175771, 48(%rax)
    jne bad_exit

    cmpl $2029885871, 52(%rax)
    jne bad_exit

    cmpl $1979220646, 56(%rax)
    jne bad_exit

    cmpl $1968205798, 60(%rax)
    jne bad_exit

    cmpl $1925687059, 64(%rax)
    jne bad_exit

    cmpl $1855504373, 68(%rax)
    jne bad_exit

    cmpl $1824017782, 72(%rax)
    jne bad_exit

    cmpl $1629103669, 76(%rax)
    jne bad_exit

    cmpl $1437682032, 80(%rax)
    jne bad_exit

    cmpl $1364807752, 84(%rax)
    jne bad_exit

    cmpl $1292648006, 88(%rax)
    jne bad_exit

    cmpl $1269411879, 92(%rax)
    jne bad_exit

    cmpl $1167414194, 96(%rax)
    jne bad_exit

    cmpl $838087726, 100(%rax)
    jne bad_exit

    cmpl $676572428, 104(%rax)
    jne bad_exit

    cmpl $595215934, 108(%rax)
    jne bad_exit

    cmpl $309552879, 112(%rax)
    jne bad_exit

    cmpl $165804778, 116(%rax)
    jne bad_exit

    cmpl $114306948, 120(%rax)
    jne bad_exit

    cmpl $6088819, 124(%rax)
    jne bad_exit

    cmpl $5996561, 128(%rax)
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
array1: .int 3938153337, 3860874895, 3793010036, 2810665667, 2734063791, 2311096085, 2083910944, 2062799482, 2029885871, 1979220646, 1968205798, 1855504373, 1824017782, 1629103669, 1437682032, 1364807752, 1269411879, 1167414194, 838087726, 676572428, 595215934, 309552879, 114306948, 6088819, 5996561, 0
array2: .int 3938153337, 3938153337, 3921428393, 3728920121, 3652968237, 2534193645, 2046175771, 1968205798, 1925687059, 1292648006, 165804778, 0
mergedArray: .zero 34
