
.global _start

.section .text

# list before:
# [node_0:263]->[node_1:490]->[node_2:128]->[node_3:334]->[node_4:99]->[node_5:31]->[node_6:99]->[node_7:490]->[node_8:157]->[node_9:157]->[node_10:226]->[node_11:385]->[node_12:361]->[node_13:128]->[node_14:490]->[node_15:361]->[node_16:490]->[node_17:8]->[node_18:31]->[node_19:65]
# list after: (trying to swap 263 and 65)
# [node_19:65]->[node_1:490]->[node_2:128]->[node_3:334]->[node_4:99]->[node_5:31]->[node_6:99]->[node_7:490]->[node_8:157]->[node_9:157]->[node_10:226]->[node_11:385]->[node_12:361]->[node_13:128]->[node_14:490]->[node_15:361]->[node_16:490]->[node_17:8]->[node_18:31]->[node_0:263]

test_start:
    cmpq $node_19, (head)
    jne bad_exit
    
    cmpq $65, (node_19)
    jne bad_exit
    cmpq $node_1, (node_19+8)
    jne bad_exit

    cmpq $490, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $128, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $334, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $99, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $31, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $99, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $490, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $157, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $157, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $226, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $385, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $361, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $128, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $490, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $361, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $490, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $8, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $31, (node_18)
    jne bad_exit
    cmpq $node_0, (node_18+8)
    jne bad_exit

    cmpq $263, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
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
src: .quad 263
dst: .quad 65
node_0: 
 .quad 263
 .quad node_1
node_1: 
 .quad 490
 .quad node_2
node_2: 
 .quad 128
 .quad node_3
node_3: 
 .quad 334
 .quad node_4
node_4: 
 .quad 99
 .quad node_5
node_5: 
 .quad 31
 .quad node_6
node_6: 
 .quad 99
 .quad node_7
node_7: 
 .quad 490
 .quad node_8
node_8: 
 .quad 157
 .quad node_9
node_9: 
 .quad 157
 .quad node_10
node_10: 
 .quad 226
 .quad node_11
node_11: 
 .quad 385
 .quad node_12
node_12: 
 .quad 361
 .quad node_13
node_13: 
 .quad 128
 .quad node_14
node_14: 
 .quad 490
 .quad node_15
node_15: 
 .quad 361
 .quad node_16
node_16: 
 .quad 490
 .quad node_17
node_17: 
 .quad 8
 .quad node_18
node_18: 
 .quad 31
 .quad node_19
node_19: 
 .quad 65
 .quad 0

