
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4106893623, 0(%rax)
    jne bad_exit

    cmpl $3878668809, 4(%rax)
    jne bad_exit

    cmpl $3558630430, 8(%rax)
    jne bad_exit

    cmpl $3546941950, 12(%rax)
    jne bad_exit

    cmpl $3499365641, 16(%rax)
    jne bad_exit

    cmpl $3491456611, 20(%rax)
    jne bad_exit

    cmpl $3441600588, 24(%rax)
    jne bad_exit

    cmpl $3249851477, 28(%rax)
    jne bad_exit

    cmpl $3143441663, 32(%rax)
    jne bad_exit

    cmpl $3124789793, 36(%rax)
    jne bad_exit

    cmpl $3074084955, 40(%rax)
    jne bad_exit

    cmpl $2858213898, 44(%rax)
    jne bad_exit

    cmpl $2611830720, 48(%rax)
    jne bad_exit

    cmpl $2521646049, 52(%rax)
    jne bad_exit

    cmpl $2296222218, 56(%rax)
    jne bad_exit

    cmpl $2211571811, 60(%rax)
    jne bad_exit

    cmpl $2155155291, 64(%rax)
    jne bad_exit

    cmpl $2024181087, 68(%rax)
    jne bad_exit

    cmpl $1801308367, 72(%rax)
    jne bad_exit

    cmpl $1352299104, 76(%rax)
    jne bad_exit

    cmpl $1196060440, 80(%rax)
    jne bad_exit

    cmpl $1179656339, 84(%rax)
    jne bad_exit

    cmpl $1152773436, 88(%rax)
    jne bad_exit

    cmpl $936128232, 92(%rax)
    jne bad_exit

    cmpl $922847169, 96(%rax)
    jne bad_exit

    cmpl $396893680, 100(%rax)
    jne bad_exit

    cmpl $267015133, 104(%rax)
    jne bad_exit

    cmpl $257416205, 108(%rax)
    jne bad_exit

    cmpl $223249616, 112(%rax)
    jne bad_exit

    cmpl $81011366, 116(%rax)
    jne bad_exit

    cmpl $0, 120(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4106893623, 3558630430, 3546941950, 3491456611, 3249851477, 3143441663, 3074084955, 2858213898, 2611830720, 2296222218, 2211571811, 2155155291, 2024181087, 1801308367, 1352299104, 936128232, 396893680, 267015133, 257416205, 223249616, 0
array2: .int 3878668809, 3499365641, 3491456611, 3441600588, 3249851477, 3143441663, 3124789793, 3074084955, 3074084955, 2858213898, 2858213898, 2858213898, 2611830720, 2521646049, 1801308367, 1196060440, 1179656339, 1152773436, 936128232, 922847169, 396893680, 396893680, 267015133, 257416205, 81011366, 0
mergedArray: .zero 31
