
.global _start

.section .text

# list before:
# [node_0:487]->[node_1:470]->[node_2:3]->[node_3:348]->[node_4:108]->[node_5:440]->[node_6:440]->[node_7:108]->[node_8:251]->[node_9:251]->[node_10:348]->[node_11:244]->[node_12:60]->[node_13:251]->[node_14:348]->[node_15:487]->[node_16:108]->[node_17:251]->[node_18:477]
# list after: (trying to swap 470 and 477)
# [node_0:487]->[node_18:477]->[node_2:3]->[node_3:348]->[node_4:108]->[node_5:440]->[node_6:440]->[node_7:108]->[node_8:251]->[node_9:251]->[node_10:348]->[node_11:244]->[node_12:60]->[node_13:251]->[node_14:348]->[node_15:487]->[node_16:108]->[node_17:251]->[node_1:470]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $487, (node_0)
    jne bad_exit
    cmpq $node_18, (node_0+8)
    jne bad_exit

    cmpq $477, (node_18)
    jne bad_exit
    cmpq $node_2, (node_18+8)
    jne bad_exit

    cmpq $3, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $348, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $108, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $440, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $440, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $108, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $251, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $251, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $348, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $244, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $60, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $251, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $348, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $487, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $108, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $251, (node_17)
    jne bad_exit
    cmpq $node_1, (node_17+8)
    jne bad_exit

    cmpq $470, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
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
src: .quad 470
dst: .quad 477
node_0: 
 .quad 487
 .quad node_1
node_1: 
 .quad 470
 .quad node_2
node_2: 
 .quad 3
 .quad node_3
node_3: 
 .quad 348
 .quad node_4
node_4: 
 .quad 108
 .quad node_5
node_5: 
 .quad 440
 .quad node_6
node_6: 
 .quad 440
 .quad node_7
node_7: 
 .quad 108
 .quad node_8
node_8: 
 .quad 251
 .quad node_9
node_9: 
 .quad 251
 .quad node_10
node_10: 
 .quad 348
 .quad node_11
node_11: 
 .quad 244
 .quad node_12
node_12: 
 .quad 60
 .quad node_13
node_13: 
 .quad 251
 .quad node_14
node_14: 
 .quad 348
 .quad node_15
node_15: 
 .quad 487
 .quad node_16
node_16: 
 .quad 108
 .quad node_17
node_17: 
 .quad 251
 .quad node_18
node_18: 
 .quad 477
 .quad 0

