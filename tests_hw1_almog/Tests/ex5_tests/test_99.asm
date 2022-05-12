
.global _start

.section .text

# list before:
# [node_0:174]->[node_1:11]->[node_2:200]->[node_3:200]->[node_4:420]->[node_5:182]->[node_6:278]->[node_7:420]->[node_8:131]->[node_9:174]->[node_10:291]->[node_11:182]->[node_12:144]->[node_13:420]->[node_14:329]->[node_15:131]->[node_16:182]->[node_17:291]->[node_18:329]->[node_19:228]->[node_20:228]->[node_21:278]->[node_22:247]->[node_23:277]->[node_24:281]->[node_25:200]->[node_26:247]->[node_27:144]
# list after: (trying to swap 277 and 281)
# [node_0:174]->[node_1:11]->[node_2:200]->[node_3:200]->[node_4:420]->[node_5:182]->[node_6:278]->[node_7:420]->[node_8:131]->[node_9:174]->[node_10:291]->[node_11:182]->[node_12:144]->[node_13:420]->[node_14:329]->[node_15:131]->[node_16:182]->[node_17:291]->[node_18:329]->[node_19:228]->[node_20:228]->[node_21:278]->[node_22:247]->[node_24:281]->[node_23:277]->[node_25:200]->[node_26:247]->[node_27:144]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $174, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $11, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $200, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $200, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $420, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $182, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $278, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $420, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $131, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $174, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $291, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $182, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $144, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $420, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $329, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $131, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $182, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $291, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $329, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $228, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $228, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $278, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $247, (node_22)
    jne bad_exit
    cmpq $node_24, (node_22+8)
    jne bad_exit

    cmpq $281, (node_24)
    jne bad_exit
    cmpq $node_23, (node_24+8)
    jne bad_exit

    cmpq $277, (node_23)
    jne bad_exit
    cmpq $node_25, (node_23+8)
    jne bad_exit

    cmpq $200, (node_25)
    jne bad_exit
    cmpq $node_26, (node_25+8)
    jne bad_exit

    cmpq $247, (node_26)
    jne bad_exit
    cmpq $node_27, (node_26+8)
    jne bad_exit

    cmpq $144, (node_27)
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
src: .quad 277
dst: .quad 281
node_0: 
 .quad 174
 .quad node_1
node_1: 
 .quad 11
 .quad node_2
node_2: 
 .quad 200
 .quad node_3
node_3: 
 .quad 200
 .quad node_4
node_4: 
 .quad 420
 .quad node_5
node_5: 
 .quad 182
 .quad node_6
node_6: 
 .quad 278
 .quad node_7
node_7: 
 .quad 420
 .quad node_8
node_8: 
 .quad 131
 .quad node_9
node_9: 
 .quad 174
 .quad node_10
node_10: 
 .quad 291
 .quad node_11
node_11: 
 .quad 182
 .quad node_12
node_12: 
 .quad 144
 .quad node_13
node_13: 
 .quad 420
 .quad node_14
node_14: 
 .quad 329
 .quad node_15
node_15: 
 .quad 131
 .quad node_16
node_16: 
 .quad 182
 .quad node_17
node_17: 
 .quad 291
 .quad node_18
node_18: 
 .quad 329
 .quad node_19
node_19: 
 .quad 228
 .quad node_20
node_20: 
 .quad 228
 .quad node_21
node_21: 
 .quad 278
 .quad node_22
node_22: 
 .quad 247
 .quad node_23
node_23: 
 .quad 277
 .quad node_24
node_24: 
 .quad 281
 .quad node_25
node_25: 
 .quad 200
 .quad node_26
node_26: 
 .quad 247
 .quad node_27
node_27: 
 .quad 144
 .quad 0

