
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4220801479, 0(%rax)
    jne bad_exit

    cmpl $4203948913, 4(%rax)
    jne bad_exit

    cmpl $4178388891, 8(%rax)
    jne bad_exit

    cmpl $3964318621, 12(%rax)
    jne bad_exit

    cmpl $3895213202, 16(%rax)
    jne bad_exit

    cmpl $3890428555, 20(%rax)
    jne bad_exit

    cmpl $3640320749, 24(%rax)
    jne bad_exit

    cmpl $3636179570, 28(%rax)
    jne bad_exit

    cmpl $3578364296, 32(%rax)
    jne bad_exit

    cmpl $3235819818, 36(%rax)
    jne bad_exit

    cmpl $3191964322, 40(%rax)
    jne bad_exit

    cmpl $2843760871, 44(%rax)
    jne bad_exit

    cmpl $2646140921, 48(%rax)
    jne bad_exit

    cmpl $2613594913, 52(%rax)
    jne bad_exit

    cmpl $2161644491, 56(%rax)
    jne bad_exit

    cmpl $2109444764, 60(%rax)
    jne bad_exit

    cmpl $2108925517, 64(%rax)
    jne bad_exit

    cmpl $1808595786, 68(%rax)
    jne bad_exit

    cmpl $1740878490, 72(%rax)
    jne bad_exit

    cmpl $1511612792, 76(%rax)
    jne bad_exit

    cmpl $1309333089, 80(%rax)
    jne bad_exit

    cmpl $1235381643, 84(%rax)
    jne bad_exit

    cmpl $1027993817, 88(%rax)
    jne bad_exit

    cmpl $793405389, 92(%rax)
    jne bad_exit

    cmpl $685380598, 96(%rax)
    jne bad_exit

    cmpl $652486736, 100(%rax)
    jne bad_exit

    cmpl $580652901, 104(%rax)
    jne bad_exit

    cmpl $559100230, 108(%rax)
    jne bad_exit

    cmpl $406650053, 112(%rax)
    jne bad_exit

    cmpl $246576239, 116(%rax)
    jne bad_exit

    cmpl $176523905, 120(%rax)
    jne bad_exit

    cmpl $43801397, 124(%rax)
    jne bad_exit

    cmpl $0, 128(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4220801479, 4203948913, 4178388891, 3964318621, 3895213202, 3890428555, 3640320749, 3636179570, 3578364296, 3235819818, 3191964322, 2843760871, 2646140921, 2613594913, 2161644491, 2109444764, 2108925517, 1808595786, 1740878490, 1511612792, 1309333089, 1235381643, 1027993817, 685380598, 652486736, 580652901, 559100230, 246576239, 176523905, 0
array2: .int 3895213202, 2843760871, 2843760871, 2161644491, 1740878490, 1309333089, 793405389, 559100230, 406650053, 246576239, 43801397, 0
mergedArray: .zero 33
