
.global _start

.section .text

# list before:
# [node_0:77]->[node_1:99]->[node_2:238]->[node_3:318]->[node_4:99]->[node_5:77]->[node_6:99]->[node_7:280]->[node_8:280]->[node_9:337]->[node_10:337]->[node_11:337]->[node_12:325]->[node_13:238]->[node_14:485]->[node_15:280]->[node_16:342]->[node_17:156]->[node_18:296]->[node_19:33]->[node_20:364]->[node_21:169]->[node_22:99]->[node_23:208]->[node_24:342]->[node_25:364]->[node_26:318]->[node_27:342]->[node_28:296]->[node_29:364]
# list after: (trying to swap 156 and 33)
# [node_0:77]->[node_1:99]->[node_2:238]->[node_3:318]->[node_4:99]->[node_5:77]->[node_6:99]->[node_7:280]->[node_8:280]->[node_9:337]->[node_10:337]->[node_11:337]->[node_12:325]->[node_13:238]->[node_14:485]->[node_15:280]->[node_16:342]->[node_19:33]->[node_18:296]->[node_17:156]->[node_20:364]->[node_21:169]->[node_22:99]->[node_23:208]->[node_24:342]->[node_25:364]->[node_26:318]->[node_27:342]->[node_28:296]->[node_29:364]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $77, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $99, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $238, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $318, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $99, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $77, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $99, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $280, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $280, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $337, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $337, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $337, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $325, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $238, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $485, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $280, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $342, (node_16)
    jne bad_exit
    cmpq $node_19, (node_16+8)
    jne bad_exit

    cmpq $33, (node_19)
    jne bad_exit
    cmpq $node_18, (node_19+8)
    jne bad_exit

    cmpq $296, (node_18)
    jne bad_exit
    cmpq $node_17, (node_18+8)
    jne bad_exit

    cmpq $156, (node_17)
    jne bad_exit
    cmpq $node_20, (node_17+8)
    jne bad_exit

    cmpq $364, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $169, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $99, (node_22)
    jne bad_exit
    cmpq $node_23, (node_22+8)
    jne bad_exit

    cmpq $208, (node_23)
    jne bad_exit
    cmpq $node_24, (node_23+8)
    jne bad_exit

    cmpq $342, (node_24)
    jne bad_exit
    cmpq $node_25, (node_24+8)
    jne bad_exit

    cmpq $364, (node_25)
    jne bad_exit
    cmpq $node_26, (node_25+8)
    jne bad_exit

    cmpq $318, (node_26)
    jne bad_exit
    cmpq $node_27, (node_26+8)
    jne bad_exit

    cmpq $342, (node_27)
    jne bad_exit
    cmpq $node_28, (node_27+8)
    jne bad_exit

    cmpq $296, (node_28)
    jne bad_exit
    cmpq $node_29, (node_28+8)
    jne bad_exit

    cmpq $364, (node_29)
    jne bad_exit
    cmpq $0, (node_29+8)
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
src: .quad 156
dst: .quad 33
node_0: 
 .quad 77
 .quad node_1
node_1: 
 .quad 99
 .quad node_2
node_2: 
 .quad 238
 .quad node_3
node_3: 
 .quad 318
 .quad node_4
node_4: 
 .quad 99
 .quad node_5
node_5: 
 .quad 77
 .quad node_6
node_6: 
 .quad 99
 .quad node_7
node_7: 
 .quad 280
 .quad node_8
node_8: 
 .quad 280
 .quad node_9
node_9: 
 .quad 337
 .quad node_10
node_10: 
 .quad 337
 .quad node_11
node_11: 
 .quad 337
 .quad node_12
node_12: 
 .quad 325
 .quad node_13
node_13: 
 .quad 238
 .quad node_14
node_14: 
 .quad 485
 .quad node_15
node_15: 
 .quad 280
 .quad node_16
node_16: 
 .quad 342
 .quad node_17
node_17: 
 .quad 156
 .quad node_18
node_18: 
 .quad 296
 .quad node_19
node_19: 
 .quad 33
 .quad node_20
node_20: 
 .quad 364
 .quad node_21
node_21: 
 .quad 169
 .quad node_22
node_22: 
 .quad 99
 .quad node_23
node_23: 
 .quad 208
 .quad node_24
node_24: 
 .quad 342
 .quad node_25
node_25: 
 .quad 364
 .quad node_26
node_26: 
 .quad 318
 .quad node_27
node_27: 
 .quad 342
 .quad node_28
node_28: 
 .quad 296
 .quad node_29
node_29: 
 .quad 364
 .quad 0

