
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4274308283, 0(%rax)
    jne bad_exit

    cmpl $3822877792, 4(%rax)
    jne bad_exit

    cmpl $3805890719, 8(%rax)
    jne bad_exit

    cmpl $3600931854, 12(%rax)
    jne bad_exit

    cmpl $3560620537, 16(%rax)
    jne bad_exit

    cmpl $3331308382, 20(%rax)
    jne bad_exit

    cmpl $3296072106, 24(%rax)
    jne bad_exit

    cmpl $2933935617, 28(%rax)
    jne bad_exit

    cmpl $2524695696, 32(%rax)
    jne bad_exit

    cmpl $2442840397, 36(%rax)
    jne bad_exit

    cmpl $2316894557, 40(%rax)
    jne bad_exit

    cmpl $2194923316, 44(%rax)
    jne bad_exit

    cmpl $1696274303, 48(%rax)
    jne bad_exit

    cmpl $1665042036, 52(%rax)
    jne bad_exit

    cmpl $1663168228, 56(%rax)
    jne bad_exit

    cmpl $1544889146, 60(%rax)
    jne bad_exit

    cmpl $839955646, 64(%rax)
    jne bad_exit

    cmpl $613268854, 68(%rax)
    jne bad_exit

    cmpl $380110058, 72(%rax)
    jne bad_exit

    cmpl $63780116, 76(%rax)
    jne bad_exit

    cmpl $45348784, 80(%rax)
    jne bad_exit

    cmpl $34130, 84(%rax)
    jne bad_exit

    cmpl $0, 88(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4274308283, 3805890719, 3331308382, 3296072106, 2442840397, 2316894557, 2194923316, 1665042036, 1663168228, 613268854, 63780116, 0
array2: .int 3822877792, 3600931854, 3560620537, 2933935617, 2524695696, 2442840397, 1696274303, 1665042036, 1663168228, 1663168228, 1544889146, 839955646, 380110058, 45348784, 34130, 0
mergedArray: .zero 23
