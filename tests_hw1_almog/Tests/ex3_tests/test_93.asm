
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4205963597, 0(%rax)
    jne bad_exit

    cmpl $4079961146, 4(%rax)
    jne bad_exit

    cmpl $3694836109, 8(%rax)
    jne bad_exit

    cmpl $3525953696, 12(%rax)
    jne bad_exit

    cmpl $3495343463, 16(%rax)
    jne bad_exit

    cmpl $3436234335, 20(%rax)
    jne bad_exit

    cmpl $3435935879, 24(%rax)
    jne bad_exit

    cmpl $3035664437, 28(%rax)
    jne bad_exit

    cmpl $3022267057, 32(%rax)
    jne bad_exit

    cmpl $2723472836, 36(%rax)
    jne bad_exit

    cmpl $2723090422, 40(%rax)
    jne bad_exit

    cmpl $2485001281, 44(%rax)
    jne bad_exit

    cmpl $2114005732, 48(%rax)
    jne bad_exit

    cmpl $1887855167, 52(%rax)
    jne bad_exit

    cmpl $1825965795, 56(%rax)
    jne bad_exit

    cmpl $1732946962, 60(%rax)
    jne bad_exit

    cmpl $1726773063, 64(%rax)
    jne bad_exit

    cmpl $1647440227, 68(%rax)
    jne bad_exit

    cmpl $1561041757, 72(%rax)
    jne bad_exit

    cmpl $1420653729, 76(%rax)
    jne bad_exit

    cmpl $1373158167, 80(%rax)
    jne bad_exit

    cmpl $829760726, 84(%rax)
    jne bad_exit

    cmpl $492155300, 88(%rax)
    jne bad_exit

    cmpl $251465744, 92(%rax)
    jne bad_exit

    cmpl $0, 96(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4079961146, 3694836109, 3525953696, 3495343463, 3436234335, 2723472836, 2485001281, 2114005732, 1825965795, 1732946962, 1647440227, 1373158167, 492155300, 251465744, 0
array2: .int 4205963597, 3436234335, 3435935879, 3035664437, 3022267057, 2723090422, 2485001281, 1887855167, 1726773063, 1561041757, 1420653729, 829760726, 251465744, 0, 0
mergedArray: .zero 25
