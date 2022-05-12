
.global _start

.section .text

# list before:
# [node_0:362]->[node_1:465]->[node_2:296]->[node_3:409]->[node_4:177]->[node_5:104]->[node_6:339]->[node_7:409]->[node_8:483]->[node_9:104]->[node_10:6]->[node_11:362]->[node_12:6]->[node_13:6]->[node_14:296]->[node_15:339]->[node_16:6]->[node_17:362]->[node_18:296]->[node_19:37]->[node_20:423]->[node_21:190]->[node_22:362]->[node_23:296]->[node_24:169]->[node_25:14]->[node_26:465]->[node_27:169]
# list after: (trying to swap 423 and 483)
# [node_0:362]->[node_1:465]->[node_2:296]->[node_3:409]->[node_4:177]->[node_5:104]->[node_6:339]->[node_7:409]->[node_20:423]->[node_9:104]->[node_10:6]->[node_11:362]->[node_12:6]->[node_13:6]->[node_14:296]->[node_15:339]->[node_16:6]->[node_17:362]->[node_18:296]->[node_19:37]->[node_8:483]->[node_21:190]->[node_22:362]->[node_23:296]->[node_24:169]->[node_25:14]->[node_26:465]->[node_27:169]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $362, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $465, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $296, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $409, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $177, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $104, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $339, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $409, (node_7)
    jne bad_exit
    cmpq $node_20, (node_7+8)
    jne bad_exit

    cmpq $423, (node_20)
    jne bad_exit
    cmpq $node_9, (node_20+8)
    jne bad_exit

    cmpq $104, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $6, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $362, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $6, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $6, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $296, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $339, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $6, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $362, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $296, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $37, (node_19)
    jne bad_exit
    cmpq $node_8, (node_19+8)
    jne bad_exit

    cmpq $483, (node_8)
    jne bad_exit
    cmpq $node_21, (node_8+8)
    jne bad_exit

    cmpq $190, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $362, (node_22)
    jne bad_exit
    cmpq $node_23, (node_22+8)
    jne bad_exit

    cmpq $296, (node_23)
    jne bad_exit
    cmpq $node_24, (node_23+8)
    jne bad_exit

    cmpq $169, (node_24)
    jne bad_exit
    cmpq $node_25, (node_24+8)
    jne bad_exit

    cmpq $14, (node_25)
    jne bad_exit
    cmpq $node_26, (node_25+8)
    jne bad_exit

    cmpq $465, (node_26)
    jne bad_exit
    cmpq $node_27, (node_26+8)
    jne bad_exit

    cmpq $169, (node_27)
    jne bad_exit
    cmpq $0, (node_27+8)
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
src: .quad 423
dst: .quad 483
node_0: 
 .quad 362
 .quad node_1
node_1: 
 .quad 465
 .quad node_2
node_2: 
 .quad 296
 .quad node_3
node_3: 
 .quad 409
 .quad node_4
node_4: 
 .quad 177
 .quad node_5
node_5: 
 .quad 104
 .quad node_6
node_6: 
 .quad 339
 .quad node_7
node_7: 
 .quad 409
 .quad node_8
node_8: 
 .quad 483
 .quad node_9
node_9: 
 .quad 104
 .quad node_10
node_10: 
 .quad 6
 .quad node_11
node_11: 
 .quad 362
 .quad node_12
node_12: 
 .quad 6
 .quad node_13
node_13: 
 .quad 6
 .quad node_14
node_14: 
 .quad 296
 .quad node_15
node_15: 
 .quad 339
 .quad node_16
node_16: 
 .quad 6
 .quad node_17
node_17: 
 .quad 362
 .quad node_18
node_18: 
 .quad 296
 .quad node_19
node_19: 
 .quad 37
 .quad node_20
node_20: 
 .quad 423
 .quad node_21
node_21: 
 .quad 190
 .quad node_22
node_22: 
 .quad 362
 .quad node_23
node_23: 
 .quad 296
 .quad node_24
node_24: 
 .quad 169
 .quad node_25
node_25: 
 .quad 14
 .quad node_26
node_26: 
 .quad 465
 .quad node_27
node_27: 
 .quad 169
 .quad 0

