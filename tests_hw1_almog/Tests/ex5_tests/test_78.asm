
.global _start

.section .text

# list before:
# [node_0:112]->[node_1:403]->[node_2:290]->[node_3:353]->[node_4:243]->[node_5:465]->[node_6:196]->[node_7:488]->[node_8:243]->[node_9:353]->[node_10:265]->[node_11:49]->[node_12:265]->[node_13:49]->[node_14:290]->[node_15:174]->[node_16:265]->[node_17:353]->[node_18:483]->[node_19:324]
# list after: (trying to swap 196 and 174)
# [node_0:112]->[node_1:403]->[node_2:290]->[node_3:353]->[node_4:243]->[node_5:465]->[node_15:174]->[node_7:488]->[node_8:243]->[node_9:353]->[node_10:265]->[node_11:49]->[node_12:265]->[node_13:49]->[node_14:290]->[node_6:196]->[node_16:265]->[node_17:353]->[node_18:483]->[node_19:324]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $112, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $403, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $290, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $353, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $243, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $465, (node_5)
    jne bad_exit
    cmpq $node_15, (node_5+8)
    jne bad_exit

    cmpq $174, (node_15)
    jne bad_exit
    cmpq $node_7, (node_15+8)
    jne bad_exit

    cmpq $488, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $243, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $353, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $265, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $49, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $265, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $49, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $290, (node_14)
    jne bad_exit
    cmpq $node_6, (node_14+8)
    jne bad_exit

    cmpq $196, (node_6)
    jne bad_exit
    cmpq $node_16, (node_6+8)
    jne bad_exit

    cmpq $265, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $353, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $483, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $324, (node_19)
    jne bad_exit
    cmpq $0, (node_19+8)
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
src: .quad 196
dst: .quad 174
node_0: 
 .quad 112
 .quad node_1
node_1: 
 .quad 403
 .quad node_2
node_2: 
 .quad 290
 .quad node_3
node_3: 
 .quad 353
 .quad node_4
node_4: 
 .quad 243
 .quad node_5
node_5: 
 .quad 465
 .quad node_6
node_6: 
 .quad 196
 .quad node_7
node_7: 
 .quad 488
 .quad node_8
node_8: 
 .quad 243
 .quad node_9
node_9: 
 .quad 353
 .quad node_10
node_10: 
 .quad 265
 .quad node_11
node_11: 
 .quad 49
 .quad node_12
node_12: 
 .quad 265
 .quad node_13
node_13: 
 .quad 49
 .quad node_14
node_14: 
 .quad 290
 .quad node_15
node_15: 
 .quad 174
 .quad node_16
node_16: 
 .quad 265
 .quad node_17
node_17: 
 .quad 353
 .quad node_18
node_18: 
 .quad 483
 .quad node_19
node_19: 
 .quad 324
 .quad 0

