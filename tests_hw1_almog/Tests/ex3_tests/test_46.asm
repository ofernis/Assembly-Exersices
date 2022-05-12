
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4024977645, 0(%rax)
    jne bad_exit

    cmpl $3969338694, 4(%rax)
    jne bad_exit

    cmpl $3691347294, 8(%rax)
    jne bad_exit

    cmpl $3565794140, 12(%rax)
    jne bad_exit

    cmpl $3464053983, 16(%rax)
    jne bad_exit

    cmpl $3325512477, 20(%rax)
    jne bad_exit

    cmpl $3291430027, 24(%rax)
    jne bad_exit

    cmpl $3119399564, 28(%rax)
    jne bad_exit

    cmpl $3112421860, 32(%rax)
    jne bad_exit

    cmpl $2989061670, 36(%rax)
    jne bad_exit

    cmpl $2955883086, 40(%rax)
    jne bad_exit

    cmpl $2559861865, 44(%rax)
    jne bad_exit

    cmpl $2408693229, 48(%rax)
    jne bad_exit

    cmpl $1997017377, 52(%rax)
    jne bad_exit

    cmpl $1933867907, 56(%rax)
    jne bad_exit

    cmpl $1723264993, 60(%rax)
    jne bad_exit

    cmpl $1658149600, 64(%rax)
    jne bad_exit

    cmpl $1552026062, 68(%rax)
    jne bad_exit

    cmpl $1534681488, 72(%rax)
    jne bad_exit

    cmpl $1529196897, 76(%rax)
    jne bad_exit

    cmpl $1193720696, 80(%rax)
    jne bad_exit

    cmpl $1113388081, 84(%rax)
    jne bad_exit

    cmpl $1054397841, 88(%rax)
    jne bad_exit

    cmpl $948947982, 92(%rax)
    jne bad_exit

    cmpl $770523751, 96(%rax)
    jne bad_exit

    cmpl $708686958, 100(%rax)
    jne bad_exit

    cmpl $685842836, 104(%rax)
    jne bad_exit

    cmpl $657092198, 108(%rax)
    jne bad_exit

    cmpl $598806162, 112(%rax)
    jne bad_exit

    cmpl $448569247, 116(%rax)
    jne bad_exit

    cmpl $401806896, 120(%rax)
    jne bad_exit

    cmpl $357742473, 124(%rax)
    jne bad_exit

    cmpl $306336245, 128(%rax)
    jne bad_exit

    cmpl $253382650, 132(%rax)
    jne bad_exit

    cmpl $118073251, 136(%rax)
    jne bad_exit

    cmpl $36537180, 140(%rax)
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
array1: .int 3969338694, 3691347294, 3565794140, 3464053983, 3325512477, 3291430027, 3119399564, 3112421860, 2955883086, 2408693229, 1997017377, 1933867907, 1723264993, 1658149600, 1534681488, 1529196897, 1193720696, 948947982, 770523751, 657092198, 598806162, 448569247, 401806896, 357742473, 118073251, 36537180, 0
array2: .int 4024977645, 3119399564, 2989061670, 2559861865, 2408693229, 1552026062, 1113388081, 1054397841, 708686958, 685842836, 306336245, 253382650, 0
mergedArray: .zero 37
