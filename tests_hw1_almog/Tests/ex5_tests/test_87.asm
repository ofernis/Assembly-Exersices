
.global _start

.section .text

# list before:
# [node_0:188]->[node_1:126]->[node_2:196]->[node_3:65]->[node_4:411]->[node_5:65]->[node_6:82]->[node_7:411]->[node_8:196]->[node_9:175]->[node_10:357]->[node_11:444]->[node_12:65]->[node_13:386]->[node_14:65]->[node_15:336]->[node_16:202]->[node_17:386]->[node_18:202]->[node_19:202]->[node_20:188]->[node_21:196]->[node_22:196]->[node_23:142]->[node_24:196]->[node_25:442]
# list after: (trying to swap 82 and 336)
# [node_0:188]->[node_1:126]->[node_2:196]->[node_3:65]->[node_4:411]->[node_5:65]->[node_15:336]->[node_7:411]->[node_8:196]->[node_9:175]->[node_10:357]->[node_11:444]->[node_12:65]->[node_13:386]->[node_14:65]->[node_6:82]->[node_16:202]->[node_17:386]->[node_18:202]->[node_19:202]->[node_20:188]->[node_21:196]->[node_22:196]->[node_23:142]->[node_24:196]->[node_25:442]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $188, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $126, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $196, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $65, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $411, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $65, (node_5)
    jne bad_exit
    cmpq $node_15, (node_5+8)
    jne bad_exit

    cmpq $336, (node_15)
    jne bad_exit
    cmpq $node_7, (node_15+8)
    jne bad_exit

    cmpq $411, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $196, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $175, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $357, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $444, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $65, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $386, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $65, (node_14)
    jne bad_exit
    cmpq $node_6, (node_14+8)
    jne bad_exit

    cmpq $82, (node_6)
    jne bad_exit
    cmpq $node_16, (node_6+8)
    jne bad_exit

    cmpq $202, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $386, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $202, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $202, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $188, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $196, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $196, (node_22)
    jne bad_exit
    cmpq $node_23, (node_22+8)
    jne bad_exit

    cmpq $142, (node_23)
    jne bad_exit
    cmpq $node_24, (node_23+8)
    jne bad_exit

    cmpq $196, (node_24)
    jne bad_exit
    cmpq $node_25, (node_24+8)
    jne bad_exit

    cmpq $442, (node_25)
    jne bad_exit
    cmpq $0, (node_25+8)
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
src: .quad 82
dst: .quad 336
node_0: 
 .quad 188
 .quad node_1
node_1: 
 .quad 126
 .quad node_2
node_2: 
 .quad 196
 .quad node_3
node_3: 
 .quad 65
 .quad node_4
node_4: 
 .quad 411
 .quad node_5
node_5: 
 .quad 65
 .quad node_6
node_6: 
 .quad 82
 .quad node_7
node_7: 
 .quad 411
 .quad node_8
node_8: 
 .quad 196
 .quad node_9
node_9: 
 .quad 175
 .quad node_10
node_10: 
 .quad 357
 .quad node_11
node_11: 
 .quad 444
 .quad node_12
node_12: 
 .quad 65
 .quad node_13
node_13: 
 .quad 386
 .quad node_14
node_14: 
 .quad 65
 .quad node_15
node_15: 
 .quad 336
 .quad node_16
node_16: 
 .quad 202
 .quad node_17
node_17: 
 .quad 386
 .quad node_18
node_18: 
 .quad 202
 .quad node_19
node_19: 
 .quad 202
 .quad node_20
node_20: 
 .quad 188
 .quad node_21
node_21: 
 .quad 196
 .quad node_22
node_22: 
 .quad 196
 .quad node_23
node_23: 
 .quad 142
 .quad node_24
node_24: 
 .quad 196
 .quad node_25
node_25: 
 .quad 442
 .quad 0

