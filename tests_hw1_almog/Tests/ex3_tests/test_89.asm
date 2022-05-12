
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4207672889, 0(%rax)
    jne bad_exit

    cmpl $4103143083, 4(%rax)
    jne bad_exit

    cmpl $3782174132, 8(%rax)
    jne bad_exit

    cmpl $3780190918, 12(%rax)
    jne bad_exit

    cmpl $3765319310, 16(%rax)
    jne bad_exit

    cmpl $3747842380, 20(%rax)
    jne bad_exit

    cmpl $3693644651, 24(%rax)
    jne bad_exit

    cmpl $3469522350, 28(%rax)
    jne bad_exit

    cmpl $3038140129, 32(%rax)
    jne bad_exit

    cmpl $2866927439, 36(%rax)
    jne bad_exit

    cmpl $2796605646, 40(%rax)
    jne bad_exit

    cmpl $2625028496, 44(%rax)
    jne bad_exit

    cmpl $2349750853, 48(%rax)
    jne bad_exit

    cmpl $2192032394, 52(%rax)
    jne bad_exit

    cmpl $1953925365, 56(%rax)
    jne bad_exit

    cmpl $1712073696, 60(%rax)
    jne bad_exit

    cmpl $1666258738, 64(%rax)
    jne bad_exit

    cmpl $1620086462, 68(%rax)
    jne bad_exit

    cmpl $1591121679, 72(%rax)
    jne bad_exit

    cmpl $1586860591, 76(%rax)
    jne bad_exit

    cmpl $1373202278, 80(%rax)
    jne bad_exit

    cmpl $1260001123, 84(%rax)
    jne bad_exit

    cmpl $1242593434, 88(%rax)
    jne bad_exit

    cmpl $1228678318, 92(%rax)
    jne bad_exit

    cmpl $1000125783, 96(%rax)
    jne bad_exit

    cmpl $991162547, 100(%rax)
    jne bad_exit

    cmpl $888361553, 104(%rax)
    jne bad_exit

    cmpl $882904141, 108(%rax)
    jne bad_exit

    cmpl $838047588, 112(%rax)
    jne bad_exit

    cmpl $398311837, 116(%rax)
    jne bad_exit

    cmpl $376720377, 120(%rax)
    jne bad_exit

    cmpl $0, 124(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4103143083, 3693644651, 3038140129, 2866927439, 2796605646, 2625028496, 2349750853, 2192032394, 1712073696, 1666258738, 1591121679, 1586860591, 1373202278, 1242593434, 1228678318, 882904141, 838047588, 398311837, 376720377, 0
array2: .int 4207672889, 4103143083, 3782174132, 3780190918, 3765319310, 3747842380, 3469522350, 2866927439, 2625028496, 1953925365, 1712073696, 1666258738, 1666258738, 1620086462, 1586860591, 1373202278, 1260001123, 1242593434, 1000125783, 991162547, 888361553, 838047588, 376720377, 0, 0
mergedArray: .zero 32
