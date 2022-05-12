
.global _start

.section .text

# list before:
# [node_0:24]->[node_1:402]->[node_2:4]->[node_3:87]->[node_4:24]->[node_5:444]->[node_6:33]->[node_7:239]->[node_8:24]->[node_9:276]->[node_10:444]->[node_11:349]->[node_12:155]->[node_13:402]->[node_14:276]->[node_15:444]->[node_16:4]->[node_17:33]->[node_18:155]->[node_19:300]->[node_20:137]->[node_21:133]->[node_22:4]->[node_23:300]->[node_24:4]->[node_25:24]->[node_26:31]->[node_27:33]->[node_28:160]->[node_29:239]
# list after: (trying to swap 133 and 160)
# [node_0:24]->[node_1:402]->[node_2:4]->[node_3:87]->[node_4:24]->[node_5:444]->[node_6:33]->[node_7:239]->[node_8:24]->[node_9:276]->[node_10:444]->[node_11:349]->[node_12:155]->[node_13:402]->[node_14:276]->[node_15:444]->[node_16:4]->[node_17:33]->[node_18:155]->[node_19:300]->[node_20:137]->[node_28:160]->[node_22:4]->[node_23:300]->[node_24:4]->[node_25:24]->[node_26:31]->[node_27:33]->[node_21:133]->[node_29:239]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $24, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $402, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $4, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $87, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $24, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $444, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $33, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $239, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $24, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $276, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $444, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $349, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $155, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $402, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $276, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $444, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $4, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $33, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $155, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $300, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $137, (node_20)
    jne bad_exit
    cmpq $node_28, (node_20+8)
    jne bad_exit

    cmpq $160, (node_28)
    jne bad_exit
    cmpq $node_22, (node_28+8)
    jne bad_exit

    cmpq $4, (node_22)
    jne bad_exit
    cmpq $node_23, (node_22+8)
    jne bad_exit

    cmpq $300, (node_23)
    jne bad_exit
    cmpq $node_24, (node_23+8)
    jne bad_exit

    cmpq $4, (node_24)
    jne bad_exit
    cmpq $node_25, (node_24+8)
    jne bad_exit

    cmpq $24, (node_25)
    jne bad_exit
    cmpq $node_26, (node_25+8)
    jne bad_exit

    cmpq $31, (node_26)
    jne bad_exit
    cmpq $node_27, (node_26+8)
    jne bad_exit

    cmpq $33, (node_27)
    jne bad_exit
    cmpq $node_21, (node_27+8)
    jne bad_exit

    cmpq $133, (node_21)
    jne bad_exit
    cmpq $node_29, (node_21+8)
    jne bad_exit

    cmpq $239, (node_29)
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
src: .quad 133
dst: .quad 160
node_0: 
 .quad 24
 .quad node_1
node_1: 
 .quad 402
 .quad node_2
node_2: 
 .quad 4
 .quad node_3
node_3: 
 .quad 87
 .quad node_4
node_4: 
 .quad 24
 .quad node_5
node_5: 
 .quad 444
 .quad node_6
node_6: 
 .quad 33
 .quad node_7
node_7: 
 .quad 239
 .quad node_8
node_8: 
 .quad 24
 .quad node_9
node_9: 
 .quad 276
 .quad node_10
node_10: 
 .quad 444
 .quad node_11
node_11: 
 .quad 349
 .quad node_12
node_12: 
 .quad 155
 .quad node_13
node_13: 
 .quad 402
 .quad node_14
node_14: 
 .quad 276
 .quad node_15
node_15: 
 .quad 444
 .quad node_16
node_16: 
 .quad 4
 .quad node_17
node_17: 
 .quad 33
 .quad node_18
node_18: 
 .quad 155
 .quad node_19
node_19: 
 .quad 300
 .quad node_20
node_20: 
 .quad 137
 .quad node_21
node_21: 
 .quad 133
 .quad node_22
node_22: 
 .quad 4
 .quad node_23
node_23: 
 .quad 300
 .quad node_24
node_24: 
 .quad 4
 .quad node_25
node_25: 
 .quad 24
 .quad node_26
node_26: 
 .quad 31
 .quad node_27
node_27: 
 .quad 33
 .quad node_28
node_28: 
 .quad 160
 .quad node_29
node_29: 
 .quad 239
 .quad 0

