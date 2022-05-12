
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3456229342, 0(%rax)
    jne bad_exit

    cmpl $3230764116, 4(%rax)
    jne bad_exit

    cmpl $3203480493, 8(%rax)
    jne bad_exit

    cmpl $2997416347, 12(%rax)
    jne bad_exit

    cmpl $2801206676, 16(%rax)
    jne bad_exit

    cmpl $2792773877, 20(%rax)
    jne bad_exit

    cmpl $2664783121, 24(%rax)
    jne bad_exit

    cmpl $2452328036, 28(%rax)
    jne bad_exit

    cmpl $2297501287, 32(%rax)
    jne bad_exit

    cmpl $1876188258, 36(%rax)
    jne bad_exit

    cmpl $1869856810, 40(%rax)
    jne bad_exit

    cmpl $1820521373, 44(%rax)
    jne bad_exit

    cmpl $1628742607, 48(%rax)
    jne bad_exit

    cmpl $1291416745, 52(%rax)
    jne bad_exit

    cmpl $1140702360, 56(%rax)
    jne bad_exit

    cmpl $1121492432, 60(%rax)
    jne bad_exit

    cmpl $962174052, 64(%rax)
    jne bad_exit

    cmpl $927957509, 68(%rax)
    jne bad_exit

    cmpl $765834819, 72(%rax)
    jne bad_exit

    cmpl $723440014, 76(%rax)
    jne bad_exit

    cmpl $625037207, 80(%rax)
    jne bad_exit

    cmpl $518765424, 84(%rax)
    jne bad_exit

    cmpl $202632404, 88(%rax)
    jne bad_exit

    cmpl $136791613, 92(%rax)
    jne bad_exit

    cmpl $7499724, 96(%rax)
    jne bad_exit

    cmpl $0, 100(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 3456229342, 3230764116, 3203480493, 2801206676, 2792773877, 2664783121, 2452328036, 2297501287, 1876188258, 1869856810, 1820521373, 1628742607, 1291416745, 1140702360, 1121492432, 962174052, 927957509, 765834819, 723440014, 625037207, 518765424, 202632404, 136791613, 7499724, 0
array2: .int 3456229342, 3456229342, 3456229342, 3456229342, 3203480493, 2997416347, 2452328036, 2452328036, 1820521373, 1121492432, 962174052, 962174052, 927957509, 927957509, 625037207, 518765424, 202632404, 7499724, 7499724, 0, 0
mergedArray: .zero 26
