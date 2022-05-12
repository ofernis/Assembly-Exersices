
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4293012490, 0(%rax)
    jne bad_exit

    cmpl $4260251495, 4(%rax)
    jne bad_exit

    cmpl $4249318248, 8(%rax)
    jne bad_exit

    cmpl $4189317454, 12(%rax)
    jne bad_exit

    cmpl $4172671188, 16(%rax)
    jne bad_exit

    cmpl $4164943803, 20(%rax)
    jne bad_exit

    cmpl $4093821973, 24(%rax)
    jne bad_exit

    cmpl $4050448500, 28(%rax)
    jne bad_exit

    cmpl $3996461717, 32(%rax)
    jne bad_exit

    cmpl $3848495117, 36(%rax)
    jne bad_exit

    cmpl $3797629779, 40(%rax)
    jne bad_exit

    cmpl $3737811197, 44(%rax)
    jne bad_exit

    cmpl $3701765403, 48(%rax)
    jne bad_exit

    cmpl $3681212647, 52(%rax)
    jne bad_exit

    cmpl $3672221629, 56(%rax)
    jne bad_exit

    cmpl $3640550403, 60(%rax)
    jne bad_exit

    cmpl $3587279468, 64(%rax)
    jne bad_exit

    cmpl $3507859872, 68(%rax)
    jne bad_exit

    cmpl $3339136424, 72(%rax)
    jne bad_exit

    cmpl $3232623252, 76(%rax)
    jne bad_exit

    cmpl $3102099734, 80(%rax)
    jne bad_exit

    cmpl $3073939693, 84(%rax)
    jne bad_exit

    cmpl $3073335460, 88(%rax)
    jne bad_exit

    cmpl $2879957339, 92(%rax)
    jne bad_exit

    cmpl $2681573197, 96(%rax)
    jne bad_exit

    cmpl $2497196765, 100(%rax)
    jne bad_exit

    cmpl $2355970147, 104(%rax)
    jne bad_exit

    cmpl $2190637859, 108(%rax)
    jne bad_exit

    cmpl $1887963463, 112(%rax)
    jne bad_exit

    cmpl $1885832229, 116(%rax)
    jne bad_exit

    cmpl $1809142771, 120(%rax)
    jne bad_exit

    cmpl $1672885154, 124(%rax)
    jne bad_exit

    cmpl $1623649878, 128(%rax)
    jne bad_exit

    cmpl $1481150462, 132(%rax)
    jne bad_exit

    cmpl $1380359249, 136(%rax)
    jne bad_exit

    cmpl $1344861108, 140(%rax)
    jne bad_exit

    cmpl $1284879310, 144(%rax)
    jne bad_exit

    cmpl $1235292741, 148(%rax)
    jne bad_exit

    cmpl $1202307873, 152(%rax)
    jne bad_exit

    cmpl $1183890914, 156(%rax)
    jne bad_exit

    cmpl $1137798092, 160(%rax)
    jne bad_exit

    cmpl $1024291772, 164(%rax)
    jne bad_exit

    cmpl $1020395567, 168(%rax)
    jne bad_exit

    cmpl $907880294, 172(%rax)
    jne bad_exit

    cmpl $727338843, 176(%rax)
    jne bad_exit

    cmpl $714931390, 180(%rax)
    jne bad_exit

    cmpl $684028263, 184(%rax)
    jne bad_exit

    cmpl $681069815, 188(%rax)
    jne bad_exit

    cmpl $592800484, 192(%rax)
    jne bad_exit

    cmpl $383889402, 196(%rax)
    jne bad_exit

    cmpl $271241044, 200(%rax)
    jne bad_exit

    cmpl $29062525, 204(%rax)
    jne bad_exit

    cmpl $26057896, 208(%rax)
    jne bad_exit

    cmpl $0, 212(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4293012490, 4260251495, 4189317454, 4093821973, 4050448500, 3640550403, 3587279468, 3073939693, 2879957339, 2190637859, 1887963463, 1885832229, 1809142771, 1623649878, 1344861108, 1284879310, 1235292741, 1202307873, 1137798092, 1024291772, 1020395567, 684028263, 681069815, 26057896, 0
array2: .int 4249318248, 4172671188, 4164943803, 3996461717, 3848495117, 3797629779, 3737811197, 3701765403, 3681212647, 3672221629, 3507859872, 3339136424, 3232623252, 3102099734, 3073335460, 2681573197, 2497196765, 2355970147, 1672885154, 1481150462, 1380359249, 1183890914, 1020395567, 907880294, 727338843, 714931390, 592800484, 383889402, 271241044, 29062525, 0
mergedArray: .zero 54
