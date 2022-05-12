
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4055323018, 0(%rax)
    jne bad_exit

    cmpl $3740164619, 4(%rax)
    jne bad_exit

    cmpl $3732598621, 8(%rax)
    jne bad_exit

    cmpl $3708309304, 12(%rax)
    jne bad_exit

    cmpl $3685764969, 16(%rax)
    jne bad_exit

    cmpl $3577060618, 20(%rax)
    jne bad_exit

    cmpl $3414165632, 24(%rax)
    jne bad_exit

    cmpl $3371385841, 28(%rax)
    jne bad_exit

    cmpl $3158455200, 32(%rax)
    jne bad_exit

    cmpl $2761491375, 36(%rax)
    jne bad_exit

    cmpl $2749715871, 40(%rax)
    jne bad_exit

    cmpl $2635577154, 44(%rax)
    jne bad_exit

    cmpl $2477625630, 48(%rax)
    jne bad_exit

    cmpl $2420713753, 52(%rax)
    jne bad_exit

    cmpl $2410024295, 56(%rax)
    jne bad_exit

    cmpl $2344747339, 60(%rax)
    jne bad_exit

    cmpl $1854196694, 64(%rax)
    jne bad_exit

    cmpl $1824802657, 68(%rax)
    jne bad_exit

    cmpl $1443256416, 72(%rax)
    jne bad_exit

    cmpl $1342801401, 76(%rax)
    jne bad_exit

    cmpl $1342295200, 80(%rax)
    jne bad_exit

    cmpl $1267909143, 84(%rax)
    jne bad_exit

    cmpl $981592087, 88(%rax)
    jne bad_exit

    cmpl $840357960, 92(%rax)
    jne bad_exit

    cmpl $724314154, 96(%rax)
    jne bad_exit

    cmpl $716398614, 100(%rax)
    jne bad_exit

    cmpl $642116540, 104(%rax)
    jne bad_exit

    cmpl $610646503, 108(%rax)
    jne bad_exit

    cmpl $447912039, 112(%rax)
    jne bad_exit

    cmpl $394946515, 116(%rax)
    jne bad_exit

    cmpl $329915552, 120(%rax)
    jne bad_exit

    cmpl $324022715, 124(%rax)
    jne bad_exit

    cmpl $310481120, 128(%rax)
    jne bad_exit

    cmpl $302415486, 132(%rax)
    jne bad_exit

    cmpl $239327125, 136(%rax)
    jne bad_exit

    cmpl $76394555, 140(%rax)
    jne bad_exit

    cmpl $35904027, 144(%rax)
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
array1: .int 3732598621, 3158455200, 2761491375, 2749715871, 2635577154, 2477625630, 2410024295, 2344747339, 1854196694, 1443256416, 1342295200, 1267909143, 981592087, 840357960, 610646503, 329915552, 324022715, 310481120, 302415486, 239327125, 76394555, 35904027, 0
array2: .int 4055323018, 3740164619, 3708309304, 3685764969, 3577060618, 3414165632, 3371385841, 3158455200, 3158455200, 2420713753, 2344747339, 1854196694, 1824802657, 1443256416, 1443256416, 1342801401, 724314154, 716398614, 642116540, 447912039, 394946515, 0
mergedArray: .zero 38
