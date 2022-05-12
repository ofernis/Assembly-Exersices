
.global _start

.section .text

# list before:
# [node_0:423]->[node_1:386]->[node_2:423]->[node_3:423]->[node_4:423]->[node_5:369]->[node_6:487]->[node_7:487]->[node_8:487]->[node_9:460]->[node_10:460]->[node_11:487]->[node_12:423]->[node_13:460]->[node_14:415]->[node_15:369]->[node_16:79]->[node_17:79]->[node_18:423]
# list after: (trying to swap 487 and 423)
# [node_0:423]->[node_1:386]->[node_2:423]->[node_3:423]->[node_4:423]->[node_5:369]->[node_6:487]->[node_7:487]->[node_8:487]->[node_9:460]->[node_10:460]->[node_11:487]->[node_12:423]->[node_13:460]->[node_14:415]->[node_15:369]->[node_16:79]->[node_17:79]->[node_18:423]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $423, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $386, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $423, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $423, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $423, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $369, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $487, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $487, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $487, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $460, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $460, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $487, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $423, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $460, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $415, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $369, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $79, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $79, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $423, (node_18)
    jne bad_exit
    cmpq $0, (node_18+8)
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
src: .quad 487
dst: .quad 423
node_0: 
 .quad 423
 .quad node_1
node_1: 
 .quad 386
 .quad node_2
node_2: 
 .quad 423
 .quad node_3
node_3: 
 .quad 423
 .quad node_4
node_4: 
 .quad 423
 .quad node_5
node_5: 
 .quad 369
 .quad node_6
node_6: 
 .quad 487
 .quad node_7
node_7: 
 .quad 487
 .quad node_8
node_8: 
 .quad 487
 .quad node_9
node_9: 
 .quad 460
 .quad node_10
node_10: 
 .quad 460
 .quad node_11
node_11: 
 .quad 487
 .quad node_12
node_12: 
 .quad 423
 .quad node_13
node_13: 
 .quad 460
 .quad node_14
node_14: 
 .quad 415
 .quad node_15
node_15: 
 .quad 369
 .quad node_16
node_16: 
 .quad 79
 .quad node_17
node_17: 
 .quad 79
 .quad node_18
node_18: 
 .quad 423
 .quad 0

