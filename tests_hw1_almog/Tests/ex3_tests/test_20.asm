
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4105376378, 0(%rax)
    jne bad_exit

    cmpl $4071264609, 4(%rax)
    jne bad_exit

    cmpl $3917000279, 8(%rax)
    jne bad_exit

    cmpl $3841897396, 12(%rax)
    jne bad_exit

    cmpl $3721474452, 16(%rax)
    jne bad_exit

    cmpl $3402549922, 20(%rax)
    jne bad_exit

    cmpl $2615236684, 24(%rax)
    jne bad_exit

    cmpl $2485716054, 28(%rax)
    jne bad_exit

    cmpl $2177695320, 32(%rax)
    jne bad_exit

    cmpl $2150715697, 36(%rax)
    jne bad_exit

    cmpl $2136855722, 40(%rax)
    jne bad_exit

    cmpl $2125924852, 44(%rax)
    jne bad_exit

    cmpl $2089556502, 48(%rax)
    jne bad_exit

    cmpl $2007379669, 52(%rax)
    jne bad_exit

    cmpl $1999288357, 56(%rax)
    jne bad_exit

    cmpl $1796561643, 60(%rax)
    jne bad_exit

    cmpl $1539536574, 64(%rax)
    jne bad_exit

    cmpl $1462973162, 68(%rax)
    jne bad_exit

    cmpl $842580210, 72(%rax)
    jne bad_exit

    cmpl $805771563, 76(%rax)
    jne bad_exit

    cmpl $369821287, 80(%rax)
    jne bad_exit

    cmpl $0, 84(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4105376378, 3721474452, 3402549922, 2485716054, 2177695320, 2125924852, 2089556502, 2007379669, 1539536574, 1462973162, 805771563, 369821287, 0
array2: .int 4071264609, 3917000279, 3841897396, 3721474452, 2615236684, 2485716054, 2177695320, 2150715697, 2136855722, 2089556502, 1999288357, 1796561643, 1539536574, 1539536574, 842580210, 805771563, 369821287, 0
mergedArray: .zero 22
