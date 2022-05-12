
.global _start

.section .text

# list before:
# [node_0:148]->[node_1:380]->[node_2:277]->[node_3:399]->[node_4:284]->[node_5:58]->[node_6:22]->[node_7:218]->[node_8:277]->[node_9:328]->[node_10:277]->[node_11:22]->[node_12:328]->[node_13:44]->[node_14:465]->[node_15:288]->[node_16:58]->[node_17:44]->[node_18:284]->[node_19:277]->[node_20:22]->[node_21:218]->[node_22:376]->[node_23:166]->[node_24:261]->[node_25:376]->[node_26:277]->[node_27:376]->[node_28:218]
# list after: (trying to swap 148 and 261)
# [node_24:261]->[node_1:380]->[node_2:277]->[node_3:399]->[node_4:284]->[node_5:58]->[node_6:22]->[node_7:218]->[node_8:277]->[node_9:328]->[node_10:277]->[node_11:22]->[node_12:328]->[node_13:44]->[node_14:465]->[node_15:288]->[node_16:58]->[node_17:44]->[node_18:284]->[node_19:277]->[node_20:22]->[node_21:218]->[node_22:376]->[node_23:166]->[node_0:148]->[node_25:376]->[node_26:277]->[node_27:376]->[node_28:218]

test_start:
    cmpq $node_24, (head)
    jne bad_exit
    
    cmpq $261, (node_24)
    jne bad_exit
    cmpq $node_1, (node_24+8)
    jne bad_exit

    cmpq $380, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $277, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $399, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $284, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $58, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $22, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $218, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $277, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $328, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $277, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $22, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $328, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $44, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $465, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $288, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $58, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $44, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $284, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $277, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $22, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $218, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $376, (node_22)
    jne bad_exit
    cmpq $node_23, (node_22+8)
    jne bad_exit

    cmpq $166, (node_23)
    jne bad_exit
    cmpq $node_0, (node_23+8)
    jne bad_exit

    cmpq $148, (node_0)
    jne bad_exit
    cmpq $node_25, (node_0+8)
    jne bad_exit

    cmpq $376, (node_25)
    jne bad_exit
    cmpq $node_26, (node_25+8)
    jne bad_exit

    cmpq $277, (node_26)
    jne bad_exit
    cmpq $node_27, (node_26+8)
    jne bad_exit

    cmpq $376, (node_27)
    jne bad_exit
    cmpq $node_28, (node_27+8)
    jne bad_exit

    cmpq $218, (node_28)
    jne bad_exit
    cmpq $0, (node_28+8)
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
src: .quad 148
dst: .quad 261
node_0: 
 .quad 148
 .quad node_1
node_1: 
 .quad 380
 .quad node_2
node_2: 
 .quad 277
 .quad node_3
node_3: 
 .quad 399
 .quad node_4
node_4: 
 .quad 284
 .quad node_5
node_5: 
 .quad 58
 .quad node_6
node_6: 
 .quad 22
 .quad node_7
node_7: 
 .quad 218
 .quad node_8
node_8: 
 .quad 277
 .quad node_9
node_9: 
 .quad 328
 .quad node_10
node_10: 
 .quad 277
 .quad node_11
node_11: 
 .quad 22
 .quad node_12
node_12: 
 .quad 328
 .quad node_13
node_13: 
 .quad 44
 .quad node_14
node_14: 
 .quad 465
 .quad node_15
node_15: 
 .quad 288
 .quad node_16
node_16: 
 .quad 58
 .quad node_17
node_17: 
 .quad 44
 .quad node_18
node_18: 
 .quad 284
 .quad node_19
node_19: 
 .quad 277
 .quad node_20
node_20: 
 .quad 22
 .quad node_21
node_21: 
 .quad 218
 .quad node_22
node_22: 
 .quad 376
 .quad node_23
node_23: 
 .quad 166
 .quad node_24
node_24: 
 .quad 261
 .quad node_25
node_25: 
 .quad 376
 .quad node_26
node_26: 
 .quad 277
 .quad node_27
node_27: 
 .quad 376
 .quad node_28
node_28: 
 .quad 218
 .quad 0

