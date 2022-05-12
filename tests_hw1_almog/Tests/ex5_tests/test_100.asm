
.global _start

.section .text

# list before:
# [node_0:166]->[node_1:303]->[node_2:433]->[node_3:58]->[node_4:433]->[node_5:303]->[node_6:163]->[node_7:176]->[node_8:136]->[node_9:270]->[node_10:312]->[node_11:461]->[node_12:186]->[node_13:461]->[node_14:224]->[node_15:228]->[node_16:243]
# list after: (trying to swap 163 and 136)
# [node_0:166]->[node_1:303]->[node_2:433]->[node_3:58]->[node_4:433]->[node_5:303]->[node_8:136]->[node_7:176]->[node_6:163]->[node_9:270]->[node_10:312]->[node_11:461]->[node_12:186]->[node_13:461]->[node_14:224]->[node_15:228]->[node_16:243]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $166, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $303, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $433, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $58, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $433, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $303, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit

    cmpq $136, (node_8)
    jne bad_exit
    cmpq $node_7, (node_8+8)
    jne bad_exit

    cmpq $176, (node_7)
    jne bad_exit
    cmpq $node_6, (node_7+8)
    jne bad_exit

    cmpq $163, (node_6)
    jne bad_exit
    cmpq $node_9, (node_6+8)
    jne bad_exit

    cmpq $270, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $312, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $461, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $186, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $461, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $224, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $228, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $243, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
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
src: .quad 163
dst: .quad 136
node_0: 
 .quad 166
 .quad node_1
node_1: 
 .quad 303
 .quad node_2
node_2: 
 .quad 433
 .quad node_3
node_3: 
 .quad 58
 .quad node_4
node_4: 
 .quad 433
 .quad node_5
node_5: 
 .quad 303
 .quad node_6
node_6: 
 .quad 163
 .quad node_7
node_7: 
 .quad 176
 .quad node_8
node_8: 
 .quad 136
 .quad node_9
node_9: 
 .quad 270
 .quad node_10
node_10: 
 .quad 312
 .quad node_11
node_11: 
 .quad 461
 .quad node_12
node_12: 
 .quad 186
 .quad node_13
node_13: 
 .quad 461
 .quad node_14
node_14: 
 .quad 224
 .quad node_15
node_15: 
 .quad 228
 .quad node_16
node_16: 
 .quad 243
 .quad 0

