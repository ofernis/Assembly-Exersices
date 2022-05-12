
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $3674974279, 0(%rax)
    jne bad_exit

    cmpl $3552661790, 4(%rax)
    jne bad_exit

    cmpl $3271929310, 8(%rax)
    jne bad_exit

    cmpl $3219259196, 12(%rax)
    jne bad_exit

    cmpl $3019013331, 16(%rax)
    jne bad_exit

    cmpl $2826671758, 20(%rax)
    jne bad_exit

    cmpl $2687655682, 24(%rax)
    jne bad_exit

    cmpl $2428525571, 28(%rax)
    jne bad_exit

    cmpl $2328806571, 32(%rax)
    jne bad_exit

    cmpl $2239478628, 36(%rax)
    jne bad_exit

    cmpl $2121249328, 40(%rax)
    jne bad_exit

    cmpl $2029774197, 44(%rax)
    jne bad_exit

    cmpl $1929375657, 48(%rax)
    jne bad_exit

    cmpl $1928759303, 52(%rax)
    jne bad_exit

    cmpl $1894196394, 56(%rax)
    jne bad_exit

    cmpl $1855915942, 60(%rax)
    jne bad_exit

    cmpl $1741098890, 64(%rax)
    jne bad_exit

    cmpl $1661119307, 68(%rax)
    jne bad_exit

    cmpl $1495119571, 72(%rax)
    jne bad_exit

    cmpl $1465984639, 76(%rax)
    jne bad_exit

    cmpl $1142685377, 80(%rax)
    jne bad_exit

    cmpl $969234664, 84(%rax)
    jne bad_exit

    cmpl $787109117, 88(%rax)
    jne bad_exit

    cmpl $519684997, 92(%rax)
    jne bad_exit

    cmpl $484695423, 96(%rax)
    jne bad_exit

    cmpl $320317544, 100(%rax)
    jne bad_exit

    cmpl $241578196, 104(%rax)
    jne bad_exit

    cmpl $143641384, 108(%rax)
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
array1: .int 3674974279, 3552661790, 3219259196, 2687655682, 2239478628, 2029774197, 1929375657, 1928759303, 1495119571, 1465984639, 519684997, 241578196, 0
array2: .int 3552661790, 3271929310, 3019013331, 2826671758, 2687655682, 2428525571, 2328806571, 2121249328, 1929375657, 1928759303, 1894196394, 1855915942, 1741098890, 1661119307, 1495119571, 1142685377, 969234664, 787109117, 484695423, 320317544, 241578196, 143641384, 0, 0
mergedArray: .zero 29
