
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4287541812, 0(%rax)
    jne bad_exit

    cmpl $4208293368, 4(%rax)
    jne bad_exit

    cmpl $4129146888, 8(%rax)
    jne bad_exit

    cmpl $4068289530, 12(%rax)
    jne bad_exit

    cmpl $3655413140, 16(%rax)
    jne bad_exit

    cmpl $3278872563, 20(%rax)
    jne bad_exit

    cmpl $3170528838, 24(%rax)
    jne bad_exit

    cmpl $2901214751, 28(%rax)
    jne bad_exit

    cmpl $2865614297, 32(%rax)
    jne bad_exit

    cmpl $2772400001, 36(%rax)
    jne bad_exit

    cmpl $2514425010, 40(%rax)
    jne bad_exit

    cmpl $2344232806, 44(%rax)
    jne bad_exit

    cmpl $2191939033, 48(%rax)
    jne bad_exit

    cmpl $1965282880, 52(%rax)
    jne bad_exit

    cmpl $1900564621, 56(%rax)
    jne bad_exit

    cmpl $1881996831, 60(%rax)
    jne bad_exit

    cmpl $1693056551, 64(%rax)
    jne bad_exit

    cmpl $1686949485, 68(%rax)
    jne bad_exit

    cmpl $1645785124, 72(%rax)
    jne bad_exit

    cmpl $1624804623, 76(%rax)
    jne bad_exit

    cmpl $1404900693, 80(%rax)
    jne bad_exit

    cmpl $1358703742, 84(%rax)
    jne bad_exit

    cmpl $1350940150, 88(%rax)
    jne bad_exit

    cmpl $1297214945, 92(%rax)
    jne bad_exit

    cmpl $1278682170, 96(%rax)
    jne bad_exit

    cmpl $1215123662, 100(%rax)
    jne bad_exit

    cmpl $1134342893, 104(%rax)
    jne bad_exit

    cmpl $1043887443, 108(%rax)
    jne bad_exit

    cmpl $1031369063, 112(%rax)
    jne bad_exit

    cmpl $846047942, 116(%rax)
    jne bad_exit

    cmpl $728566155, 120(%rax)
    jne bad_exit

    cmpl $717746572, 124(%rax)
    jne bad_exit

    cmpl $600319038, 128(%rax)
    jne bad_exit

    cmpl $479337134, 132(%rax)
    jne bad_exit

    cmpl $401513795, 136(%rax)
    jne bad_exit

    cmpl $265237804, 140(%rax)
    jne bad_exit

    cmpl $196086107, 144(%rax)
    jne bad_exit

    cmpl $194034800, 148(%rax)
    jne bad_exit

    cmpl $134268804, 152(%rax)
    jne bad_exit

    cmpl $50347081, 156(%rax)
    jne bad_exit

    cmpl $0, 160(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4287541812, 4208293368, 4129146888, 4068289530, 3170528838, 2865614297, 2772400001, 2344232806, 1900564621, 1881996831, 1693056551, 1686949485, 1645785124, 1624804623, 1404900693, 1358703742, 1350940150, 1297214945, 1278682170, 1215123662, 728566155, 717746572, 600319038, 479337134, 401513795, 265237804, 194034800, 134268804, 50347081, 0
array2: .int 4068289530, 3655413140, 3278872563, 2901214751, 2514425010, 2191939033, 1965282880, 1134342893, 1043887443, 1031369063, 846047942, 401513795, 196086107, 0
mergedArray: .zero 41
