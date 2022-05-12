
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4214719780, 0(%rax)
    jne bad_exit

    cmpl $4037965650, 4(%rax)
    jne bad_exit

    cmpl $4022226527, 8(%rax)
    jne bad_exit

    cmpl $3999561566, 12(%rax)
    jne bad_exit

    cmpl $3722113471, 16(%rax)
    jne bad_exit

    cmpl $3672596923, 20(%rax)
    jne bad_exit

    cmpl $3623321565, 24(%rax)
    jne bad_exit

    cmpl $3461901072, 28(%rax)
    jne bad_exit

    cmpl $3236993874, 32(%rax)
    jne bad_exit

    cmpl $3087697468, 36(%rax)
    jne bad_exit

    cmpl $2987036082, 40(%rax)
    jne bad_exit

    cmpl $2687453440, 44(%rax)
    jne bad_exit

    cmpl $2395709082, 48(%rax)
    jne bad_exit

    cmpl $2390365586, 52(%rax)
    jne bad_exit

    cmpl $2328873911, 56(%rax)
    jne bad_exit

    cmpl $2313938223, 60(%rax)
    jne bad_exit

    cmpl $2311388376, 64(%rax)
    jne bad_exit

    cmpl $2247261510, 68(%rax)
    jne bad_exit

    cmpl $2237031713, 72(%rax)
    jne bad_exit

    cmpl $2033675398, 76(%rax)
    jne bad_exit

    cmpl $1963196477, 80(%rax)
    jne bad_exit

    cmpl $1790925316, 84(%rax)
    jne bad_exit

    cmpl $1665418868, 88(%rax)
    jne bad_exit

    cmpl $1524845944, 92(%rax)
    jne bad_exit

    cmpl $1486878784, 96(%rax)
    jne bad_exit

    cmpl $1406923608, 100(%rax)
    jne bad_exit

    cmpl $1390965541, 104(%rax)
    jne bad_exit

    cmpl $1259223992, 108(%rax)
    jne bad_exit

    cmpl $1258167428, 112(%rax)
    jne bad_exit

    cmpl $1181987907, 116(%rax)
    jne bad_exit

    cmpl $1142542002, 120(%rax)
    jne bad_exit

    cmpl $1062628937, 124(%rax)
    jne bad_exit

    cmpl $698559604, 128(%rax)
    jne bad_exit

    cmpl $628020081, 132(%rax)
    jne bad_exit

    cmpl $506669975, 136(%rax)
    jne bad_exit

    cmpl $432635030, 140(%rax)
    jne bad_exit

    cmpl $349736547, 144(%rax)
    jne bad_exit

    cmpl $180480436, 148(%rax)
    jne bad_exit

    cmpl $178924268, 152(%rax)
    jne bad_exit

    cmpl $0, 156(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4214719780, 3999561566, 3722113471, 3672596923, 3461901072, 3236993874, 3087697468, 2395709082, 2313938223, 2247261510, 2237031713, 2033675398, 1963196477, 1790925316, 1665418868, 1524845944, 1406923608, 1259223992, 1181987907, 1142542002, 1062628937, 698559604, 506669975, 432635030, 178924268, 0
array2: .int 4037965650, 4022226527, 3999561566, 3623321565, 3236993874, 2987036082, 2687453440, 2395709082, 2390365586, 2328873911, 2311388376, 1963196477, 1963196477, 1790925316, 1665418868, 1665418868, 1486878784, 1406923608, 1406923608, 1390965541, 1259223992, 1258167428, 628020081, 349736547, 180480436, 0
mergedArray: .zero 40
