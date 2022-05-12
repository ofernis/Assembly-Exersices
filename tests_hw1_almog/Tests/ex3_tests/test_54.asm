
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4239011774, 0(%rax)
    jne bad_exit

    cmpl $4147985752, 4(%rax)
    jne bad_exit

    cmpl $3951154261, 8(%rax)
    jne bad_exit

    cmpl $3855147368, 12(%rax)
    jne bad_exit

    cmpl $3709641093, 16(%rax)
    jne bad_exit

    cmpl $3489070073, 20(%rax)
    jne bad_exit

    cmpl $3413024373, 24(%rax)
    jne bad_exit

    cmpl $3357638580, 28(%rax)
    jne bad_exit

    cmpl $3339646731, 32(%rax)
    jne bad_exit

    cmpl $3009961679, 36(%rax)
    jne bad_exit

    cmpl $2837854934, 40(%rax)
    jne bad_exit

    cmpl $2712259948, 44(%rax)
    jne bad_exit

    cmpl $2600290320, 48(%rax)
    jne bad_exit

    cmpl $2377592641, 52(%rax)
    jne bad_exit

    cmpl $2348588633, 56(%rax)
    jne bad_exit

    cmpl $2282348376, 60(%rax)
    jne bad_exit

    cmpl $2177289131, 64(%rax)
    jne bad_exit

    cmpl $2109724331, 68(%rax)
    jne bad_exit

    cmpl $2037559080, 72(%rax)
    jne bad_exit

    cmpl $1872130361, 76(%rax)
    jne bad_exit

    cmpl $1774911473, 80(%rax)
    jne bad_exit

    cmpl $1531428180, 84(%rax)
    jne bad_exit

    cmpl $1488558595, 88(%rax)
    jne bad_exit

    cmpl $1315051602, 92(%rax)
    jne bad_exit

    cmpl $1297926227, 96(%rax)
    jne bad_exit

    cmpl $1237363064, 100(%rax)
    jne bad_exit

    cmpl $1198324950, 104(%rax)
    jne bad_exit

    cmpl $1119361736, 108(%rax)
    jne bad_exit

    cmpl $1093399305, 112(%rax)
    jne bad_exit

    cmpl $1057602957, 116(%rax)
    jne bad_exit

    cmpl $1038156374, 120(%rax)
    jne bad_exit

    cmpl $859255756, 124(%rax)
    jne bad_exit

    cmpl $576171820, 128(%rax)
    jne bad_exit

    cmpl $484954242, 132(%rax)
    jne bad_exit

    cmpl $472679910, 136(%rax)
    jne bad_exit

    cmpl $246403976, 140(%rax)
    jne bad_exit

    cmpl $0, 144(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4239011774, 3951154261, 3855147368, 3709641093, 3357638580, 3339646731, 2712259948, 2377592641, 2348588633, 2282348376, 2109724331, 2037559080, 1872130361, 1774911473, 1531428180, 1237363064, 1198324950, 1093399305, 1057602957, 576171820, 484954242, 472679910, 0
array2: .int 4147985752, 3489070073, 3413024373, 3009961679, 2837854934, 2600290320, 2348588633, 2177289131, 1531428180, 1488558595, 1315051602, 1297926227, 1237363064, 1198324950, 1198324950, 1119361736, 1038156374, 859255756, 472679910, 246403976, 0
mergedArray: .zero 37
