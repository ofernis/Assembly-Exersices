
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4222871026, 0(%rax)
    jne bad_exit

    cmpl $4069912041, 4(%rax)
    jne bad_exit

    cmpl $3856509097, 8(%rax)
    jne bad_exit

    cmpl $3566437283, 12(%rax)
    jne bad_exit

    cmpl $3437599364, 16(%rax)
    jne bad_exit

    cmpl $3387334794, 20(%rax)
    jne bad_exit

    cmpl $3225354008, 24(%rax)
    jne bad_exit

    cmpl $3199551983, 28(%rax)
    jne bad_exit

    cmpl $3195420590, 32(%rax)
    jne bad_exit

    cmpl $3095271815, 36(%rax)
    jne bad_exit

    cmpl $3062543320, 40(%rax)
    jne bad_exit

    cmpl $2774608029, 44(%rax)
    jne bad_exit

    cmpl $2607206872, 48(%rax)
    jne bad_exit

    cmpl $2592943350, 52(%rax)
    jne bad_exit

    cmpl $2038726311, 56(%rax)
    jne bad_exit

    cmpl $1653907217, 60(%rax)
    jne bad_exit

    cmpl $1508260678, 64(%rax)
    jne bad_exit

    cmpl $1294081473, 68(%rax)
    jne bad_exit

    cmpl $1288904615, 72(%rax)
    jne bad_exit

    cmpl $1078184977, 76(%rax)
    jne bad_exit

    cmpl $1037895668, 80(%rax)
    jne bad_exit

    cmpl $1021967898, 84(%rax)
    jne bad_exit

    cmpl $839525938, 88(%rax)
    jne bad_exit

    cmpl $821908311, 92(%rax)
    jne bad_exit

    cmpl $496831788, 96(%rax)
    jne bad_exit

    cmpl $390266017, 100(%rax)
    jne bad_exit

    cmpl $231428401, 104(%rax)
    jne bad_exit

    cmpl $214198777, 108(%rax)
    jne bad_exit

    cmpl $0, 112(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4222871026, 3566437283, 3195420590, 2774608029, 2038726311, 1508260678, 1037895668, 1021967898, 821908311, 231428401, 0
array2: .int 4069912041, 3856509097, 3566437283, 3566437283, 3437599364, 3387334794, 3225354008, 3199551983, 3095271815, 3062543320, 2607206872, 2592943350, 1653907217, 1294081473, 1288904615, 1078184977, 839525938, 496831788, 390266017, 214198777, 0
mergedArray: .zero 29
