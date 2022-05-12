
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4186851346, 0(%rax)
    jne bad_exit

    cmpl $4111913373, 4(%rax)
    jne bad_exit

    cmpl $3936423966, 8(%rax)
    jne bad_exit

    cmpl $3801744602, 12(%rax)
    jne bad_exit

    cmpl $3547918825, 16(%rax)
    jne bad_exit

    cmpl $3303024911, 20(%rax)
    jne bad_exit

    cmpl $3280805485, 24(%rax)
    jne bad_exit

    cmpl $3238368356, 28(%rax)
    jne bad_exit

    cmpl $3227865766, 32(%rax)
    jne bad_exit

    cmpl $2766101360, 36(%rax)
    jne bad_exit

    cmpl $2696275992, 40(%rax)
    jne bad_exit

    cmpl $2661702086, 44(%rax)
    jne bad_exit

    cmpl $2617931667, 48(%rax)
    jne bad_exit

    cmpl $2558440310, 52(%rax)
    jne bad_exit

    cmpl $2479870495, 56(%rax)
    jne bad_exit

    cmpl $2356105101, 60(%rax)
    jne bad_exit

    cmpl $2352684365, 64(%rax)
    jne bad_exit

    cmpl $2347564479, 68(%rax)
    jne bad_exit

    cmpl $2333519704, 72(%rax)
    jne bad_exit

    cmpl $2097963337, 76(%rax)
    jne bad_exit

    cmpl $1978046147, 80(%rax)
    jne bad_exit

    cmpl $1932412048, 84(%rax)
    jne bad_exit

    cmpl $1885837253, 88(%rax)
    jne bad_exit

    cmpl $1857995041, 92(%rax)
    jne bad_exit

    cmpl $1739775306, 96(%rax)
    jne bad_exit

    cmpl $1711149868, 100(%rax)
    jne bad_exit

    cmpl $1678263909, 104(%rax)
    jne bad_exit

    cmpl $1626454852, 108(%rax)
    jne bad_exit

    cmpl $1537615898, 112(%rax)
    jne bad_exit

    cmpl $1334422605, 116(%rax)
    jne bad_exit

    cmpl $1321266623, 120(%rax)
    jne bad_exit

    cmpl $1292374181, 124(%rax)
    jne bad_exit

    cmpl $1282787903, 128(%rax)
    jne bad_exit

    cmpl $1244780303, 132(%rax)
    jne bad_exit

    cmpl $998622397, 136(%rax)
    jne bad_exit

    cmpl $858109090, 140(%rax)
    jne bad_exit

    cmpl $791896765, 144(%rax)
    jne bad_exit

    cmpl $574146844, 148(%rax)
    jne bad_exit

    cmpl $543451108, 152(%rax)
    jne bad_exit

    cmpl $474705884, 156(%rax)
    jne bad_exit

    cmpl $394345834, 160(%rax)
    jne bad_exit

    cmpl $376244278, 164(%rax)
    jne bad_exit

    cmpl $265692617, 168(%rax)
    jne bad_exit

    cmpl $0, 172(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4111913373, 3547918825, 3238368356, 2696275992, 2617931667, 2479870495, 2356105101, 2352684365, 2347564479, 2097963337, 1978046147, 1932412048, 1885837253, 1739775306, 1711149868, 1626454852, 1537615898, 1321266623, 858109090, 791896765, 376244278, 0
array2: .int 4186851346, 3936423966, 3801744602, 3303024911, 3280805485, 3227865766, 2766101360, 2661702086, 2558440310, 2333519704, 1857995041, 1678263909, 1626454852, 1334422605, 1292374181, 1282787903, 1244780303, 998622397, 574146844, 543451108, 474705884, 394345834, 265692617, 0
mergedArray: .zero 44
