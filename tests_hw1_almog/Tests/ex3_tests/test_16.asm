
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4080376756, 0(%rax)
    jne bad_exit

    cmpl $3784945610, 4(%rax)
    jne bad_exit

    cmpl $3779812897, 8(%rax)
    jne bad_exit

    cmpl $3757045709, 12(%rax)
    jne bad_exit

    cmpl $3720471173, 16(%rax)
    jne bad_exit

    cmpl $3456477780, 20(%rax)
    jne bad_exit

    cmpl $3414223912, 24(%rax)
    jne bad_exit

    cmpl $3377946622, 28(%rax)
    jne bad_exit

    cmpl $3312647102, 32(%rax)
    jne bad_exit

    cmpl $3091970397, 36(%rax)
    jne bad_exit

    cmpl $3083912721, 40(%rax)
    jne bad_exit

    cmpl $2932473779, 44(%rax)
    jne bad_exit

    cmpl $2930122611, 48(%rax)
    jne bad_exit

    cmpl $2883577695, 52(%rax)
    jne bad_exit

    cmpl $2880491540, 56(%rax)
    jne bad_exit

    cmpl $2799401064, 60(%rax)
    jne bad_exit

    cmpl $2641125309, 64(%rax)
    jne bad_exit

    cmpl $2582722482, 68(%rax)
    jne bad_exit

    cmpl $2472731662, 72(%rax)
    jne bad_exit

    cmpl $2425741484, 76(%rax)
    jne bad_exit

    cmpl $2421643744, 80(%rax)
    jne bad_exit

    cmpl $2340530060, 84(%rax)
    jne bad_exit

    cmpl $2285838772, 88(%rax)
    jne bad_exit

    cmpl $2018747555, 92(%rax)
    jne bad_exit

    cmpl $2018385932, 96(%rax)
    jne bad_exit

    cmpl $1979375193, 100(%rax)
    jne bad_exit

    cmpl $1869068734, 104(%rax)
    jne bad_exit

    cmpl $1420766390, 108(%rax)
    jne bad_exit

    cmpl $1395477093, 112(%rax)
    jne bad_exit

    cmpl $1315012183, 116(%rax)
    jne bad_exit

    cmpl $1147199398, 120(%rax)
    jne bad_exit

    cmpl $1061791408, 124(%rax)
    jne bad_exit

    cmpl $1042307365, 128(%rax)
    jne bad_exit

    cmpl $665505985, 132(%rax)
    jne bad_exit

    cmpl $662034039, 136(%rax)
    jne bad_exit

    cmpl $338356677, 140(%rax)
    jne bad_exit

    cmpl $323951744, 144(%rax)
    jne bad_exit

    cmpl $234388466, 148(%rax)
    jne bad_exit

    cmpl $167586986, 152(%rax)
    jne bad_exit

    cmpl $137363099, 156(%rax)
    jne bad_exit

    cmpl $130271148, 160(%rax)
    jne bad_exit

    cmpl $87513301, 164(%rax)
    jne bad_exit

    cmpl $5242082, 168(%rax)
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
array1: .int 4080376756, 3779812897, 3720471173, 3456477780, 3091970397, 3083912721, 2883577695, 2880491540, 2799401064, 2641125309, 2582722482, 2425741484, 2421643744, 2285838772, 2018747555, 2018385932, 1869068734, 1315012183, 1147199398, 1042307365, 662034039, 234388466, 167586986, 5242082, 0
array2: .int 3784945610, 3779812897, 3757045709, 3456477780, 3414223912, 3377946622, 3312647102, 3083912721, 2932473779, 2930122611, 2641125309, 2472731662, 2425741484, 2340530060, 2018747555, 2018747555, 2018385932, 1979375193, 1420766390, 1395477093, 1061791408, 1042307365, 665505985, 662034039, 338356677, 323951744, 137363099, 130271148, 87513301, 5242082, 0
mergedArray: .zero 44
