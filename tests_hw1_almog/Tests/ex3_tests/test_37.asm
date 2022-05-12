
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4261363263, 0(%rax)
    jne bad_exit

    cmpl $4183588178, 4(%rax)
    jne bad_exit

    cmpl $4110894157, 8(%rax)
    jne bad_exit

    cmpl $4016184712, 12(%rax)
    jne bad_exit

    cmpl $3966669967, 16(%rax)
    jne bad_exit

    cmpl $3959163721, 20(%rax)
    jne bad_exit

    cmpl $3948193933, 24(%rax)
    jne bad_exit

    cmpl $3728382745, 28(%rax)
    jne bad_exit

    cmpl $3673290076, 32(%rax)
    jne bad_exit

    cmpl $3621396631, 36(%rax)
    jne bad_exit

    cmpl $3549379315, 40(%rax)
    jne bad_exit

    cmpl $3340335931, 44(%rax)
    jne bad_exit

    cmpl $3298753534, 48(%rax)
    jne bad_exit

    cmpl $3118667968, 52(%rax)
    jne bad_exit

    cmpl $2826520217, 56(%rax)
    jne bad_exit

    cmpl $2750831808, 60(%rax)
    jne bad_exit

    cmpl $2677197525, 64(%rax)
    jne bad_exit

    cmpl $2505776913, 68(%rax)
    jne bad_exit

    cmpl $2498105823, 72(%rax)
    jne bad_exit

    cmpl $2456391807, 76(%rax)
    jne bad_exit

    cmpl $2154921690, 80(%rax)
    jne bad_exit

    cmpl $1994098963, 84(%rax)
    jne bad_exit

    cmpl $1925127103, 88(%rax)
    jne bad_exit

    cmpl $1898525434, 92(%rax)
    jne bad_exit

    cmpl $1667357561, 96(%rax)
    jne bad_exit

    cmpl $1333614616, 100(%rax)
    jne bad_exit

    cmpl $1210956678, 104(%rax)
    jne bad_exit

    cmpl $883771931, 108(%rax)
    jne bad_exit

    cmpl $744376358, 112(%rax)
    jne bad_exit

    cmpl $619685851, 116(%rax)
    jne bad_exit

    cmpl $145571326, 120(%rax)
    jne bad_exit

    cmpl $131604643, 124(%rax)
    jne bad_exit

    cmpl $103729030, 128(%rax)
    jne bad_exit

    cmpl $0, 132(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4183588178, 4110894157, 4016184712, 3966669967, 3959163721, 3948193933, 3728382745, 3673290076, 3621396631, 3549379315, 3340335931, 3298753534, 3118667968, 2826520217, 2750831808, 2677197525, 2505776913, 2456391807, 2154921690, 1994098963, 1925127103, 1898525434, 1667357561, 1210956678, 883771931, 619685851, 145571326, 131604643, 103729030, 0
array2: .int 4261363263, 3959163721, 3728382745, 3728382745, 3340335931, 3298753534, 3298753534, 2505776913, 2505776913, 2498105823, 1925127103, 1898525434, 1333614616, 1210956678, 1210956678, 744376358, 619685851, 103729030, 103729030, 103729030, 0
mergedArray: .zero 34
