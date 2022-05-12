
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4209613255, 0(%rax)
    jne bad_exit

    cmpl $4120714455, 4(%rax)
    jne bad_exit

    cmpl $3685677714, 8(%rax)
    jne bad_exit

    cmpl $3198565558, 12(%rax)
    jne bad_exit

    cmpl $3011248898, 16(%rax)
    jne bad_exit

    cmpl $2998362665, 20(%rax)
    jne bad_exit

    cmpl $2934416591, 24(%rax)
    jne bad_exit

    cmpl $2880406352, 28(%rax)
    jne bad_exit

    cmpl $2791703377, 32(%rax)
    jne bad_exit

    cmpl $2604330211, 36(%rax)
    jne bad_exit

    cmpl $2584778936, 40(%rax)
    jne bad_exit

    cmpl $2556520566, 44(%rax)
    jne bad_exit

    cmpl $2315139720, 48(%rax)
    jne bad_exit

    cmpl $2222670925, 52(%rax)
    jne bad_exit

    cmpl $2112379852, 56(%rax)
    jne bad_exit

    cmpl $1867179047, 60(%rax)
    jne bad_exit

    cmpl $1832464312, 64(%rax)
    jne bad_exit

    cmpl $1831806909, 68(%rax)
    jne bad_exit

    cmpl $1811784405, 72(%rax)
    jne bad_exit

    cmpl $1779179736, 76(%rax)
    jne bad_exit

    cmpl $1751091363, 80(%rax)
    jne bad_exit

    cmpl $1669797651, 84(%rax)
    jne bad_exit

    cmpl $1633902226, 88(%rax)
    jne bad_exit

    cmpl $1302403353, 92(%rax)
    jne bad_exit

    cmpl $1038505919, 96(%rax)
    jne bad_exit

    cmpl $852842697, 100(%rax)
    jne bad_exit

    cmpl $715304576, 104(%rax)
    jne bad_exit

    cmpl $370802703, 108(%rax)
    jne bad_exit

    cmpl $108683292, 112(%rax)
    jne bad_exit

    cmpl $0, 116(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4209613255, 4120714455, 3685677714, 3198565558, 3011248898, 2998362665, 2934416591, 2880406352, 2791703377, 2604330211, 2584778936, 2556520566, 2315139720, 2222670925, 2112379852, 1867179047, 1832464312, 1831806909, 1811784405, 1779179736, 1751091363, 1669797651, 1633902226, 1302403353, 1038505919, 852842697, 715304576, 370802703, 108683292, 0
array2: .int 3198565558, 2934416591, 2880406352, 2791703377, 2791703377, 2604330211, 2584778936, 2556520566, 2315139720, 1867179047, 1831806909, 1811784405, 1302403353, 1038505919, 852842697, 715304576, 370802703, 370802703, 108683292, 0, 0
mergedArray: .zero 30
