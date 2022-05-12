
.global _start

.section .text

# list before:
# [node_0:55]->[node_1:213]->[node_2:213]->[node_3:154]->[node_4:288]->[node_5:131]->[node_6:476]->[node_7:259]->[node_8:154]->[node_9:253]->[node_10:476]->[node_11:16]->[node_12:55]->[node_13:49]->[node_14:253]->[node_15:288]->[node_16:154]->[node_17:87]->[node_18:49]->[node_19:476]->[node_20:259]->[node_21:288]->[node_22:401]
# list after: (trying to swap 131 and 87)
# [node_0:55]->[node_1:213]->[node_2:213]->[node_3:154]->[node_4:288]->[node_17:87]->[node_6:476]->[node_7:259]->[node_8:154]->[node_9:253]->[node_10:476]->[node_11:16]->[node_12:55]->[node_13:49]->[node_14:253]->[node_15:288]->[node_16:154]->[node_5:131]->[node_18:49]->[node_19:476]->[node_20:259]->[node_21:288]->[node_22:401]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $55, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $213, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $213, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $154, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $288, (node_4)
    jne bad_exit
    cmpq $node_17, (node_4+8)
    jne bad_exit

    cmpq $87, (node_17)
    jne bad_exit
    cmpq $node_6, (node_17+8)
    jne bad_exit

    cmpq $476, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $259, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $154, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $253, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $476, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $16, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $55, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $49, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $253, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $288, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $154, (node_16)
    jne bad_exit
    cmpq $node_5, (node_16+8)
    jne bad_exit

    cmpq $131, (node_5)
    jne bad_exit
    cmpq $node_18, (node_5+8)
    jne bad_exit

    cmpq $49, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $476, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $259, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $288, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $401, (node_22)
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
src: .quad 131
dst: .quad 87
node_0: 
 .quad 55
 .quad node_1
node_1: 
 .quad 213
 .quad node_2
node_2: 
 .quad 213
 .quad node_3
node_3: 
 .quad 154
 .quad node_4
node_4: 
 .quad 288
 .quad node_5
node_5: 
 .quad 131
 .quad node_6
node_6: 
 .quad 476
 .quad node_7
node_7: 
 .quad 259
 .quad node_8
node_8: 
 .quad 154
 .quad node_9
node_9: 
 .quad 253
 .quad node_10
node_10: 
 .quad 476
 .quad node_11
node_11: 
 .quad 16
 .quad node_12
node_12: 
 .quad 55
 .quad node_13
node_13: 
 .quad 49
 .quad node_14
node_14: 
 .quad 253
 .quad node_15
node_15: 
 .quad 288
 .quad node_16
node_16: 
 .quad 154
 .quad node_17
node_17: 
 .quad 87
 .quad node_18
node_18: 
 .quad 49
 .quad node_19
node_19: 
 .quad 476
 .quad node_20
node_20: 
 .quad 259
 .quad node_21
node_21: 
 .quad 288
 .quad node_22
node_22: 
 .quad 401
 .quad 0

