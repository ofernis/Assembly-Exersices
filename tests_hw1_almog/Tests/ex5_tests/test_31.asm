
.global _start

.section .text

# list before:
# [node_0:478]->[node_1:53]->[node_2:430]->[node_3:241]->[node_4:458]->[node_5:53]->[node_6:89]->[node_7:386]->[node_8:53]->[node_9:393]->[node_10:393]->[node_11:10]->[node_12:430]->[node_13:109]->[node_14:283]->[node_15:386]->[node_16:48]->[node_17:10]->[node_18:328]->[node_19:109]->[node_20:89]->[node_21:53]->[node_22:241]
# list after: (trying to swap 478 and 328)
# [node_18:328]->[node_1:53]->[node_2:430]->[node_3:241]->[node_4:458]->[node_5:53]->[node_6:89]->[node_7:386]->[node_8:53]->[node_9:393]->[node_10:393]->[node_11:10]->[node_12:430]->[node_13:109]->[node_14:283]->[node_15:386]->[node_16:48]->[node_17:10]->[node_0:478]->[node_19:109]->[node_20:89]->[node_21:53]->[node_22:241]

test_start:
    cmpq $node_18, (head)
    jne bad_exit
    
    cmpq $328, (node_18)
    jne bad_exit
    cmpq $node_1, (node_18+8)
    jne bad_exit

    cmpq $53, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $430, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $241, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $458, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $53, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $89, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $386, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $53, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $393, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $393, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $10, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $430, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $109, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $283, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $386, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $48, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $10, (node_17)
    jne bad_exit
    cmpq $node_0, (node_17+8)
    jne bad_exit

    cmpq $478, (node_0)
    jne bad_exit
    cmpq $node_19, (node_0+8)
    jne bad_exit

    cmpq $109, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $89, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $53, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $241, (node_22)
    jne bad_exit
    cmpq $0, (node_22+8)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
head: .quad node_0
src: .quad 478
dst: .quad 328
node_0: 
 .quad 478
 .quad node_1
node_1: 
 .quad 53
 .quad node_2
node_2: 
 .quad 430
 .quad node_3
node_3: 
 .quad 241
 .quad node_4
node_4: 
 .quad 458
 .quad node_5
node_5: 
 .quad 53
 .quad node_6
node_6: 
 .quad 89
 .quad node_7
node_7: 
 .quad 386
 .quad node_8
node_8: 
 .quad 53
 .quad node_9
node_9: 
 .quad 393
 .quad node_10
node_10: 
 .quad 393
 .quad node_11
node_11: 
 .quad 10
 .quad node_12
node_12: 
 .quad 430
 .quad node_13
node_13: 
 .quad 109
 .quad node_14
node_14: 
 .quad 283
 .quad node_15
node_15: 
 .quad 386
 .quad node_16
node_16: 
 .quad 48
 .quad node_17
node_17: 
 .quad 10
 .quad node_18
node_18: 
 .quad 328
 .quad node_19
node_19: 
 .quad 109
 .quad node_20
node_20: 
 .quad 89
 .quad node_21
node_21: 
 .quad 53
 .quad node_22
node_22: 
 .quad 241
 .quad 0

