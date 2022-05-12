
.global _start

.section .text

# list before:
# [node_0:167]->[node_1:14]->[node_2:476]->[node_3:457]->[node_4:248]->[node_5:457]->[node_6:236]->[node_7:350]->[node_8:248]->[node_9:370]->[node_10:476]->[node_11:114]->[node_12:151]->[node_13:248]->[node_14:201]->[node_15:1]->[node_16:476]->[node_17:167]->[node_18:248]->[node_19:114]->[node_20:201]->[node_21:151]
# list after: (trying to swap 370 and 370)
# [node_0:167]->[node_1:14]->[node_2:476]->[node_3:457]->[node_4:248]->[node_5:457]->[node_6:236]->[node_7:350]->[node_8:248]->[node_9:370]->[node_10:476]->[node_11:114]->[node_12:151]->[node_13:248]->[node_14:201]->[node_15:1]->[node_16:476]->[node_17:167]->[node_18:248]->[node_19:114]->[node_20:201]->[node_21:151]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $167, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $14, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $476, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $457, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $248, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $457, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $236, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $350, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $248, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $370, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $476, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $114, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $151, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $248, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $201, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $1, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $476, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $167, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $248, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $114, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $201, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $151, (node_21)
    jne bad_exit
    cmpq $0, (node_21+8)
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
src: .quad 370
dst: .quad 370
node_0: 
 .quad 167
 .quad node_1
node_1: 
 .quad 14
 .quad node_2
node_2: 
 .quad 476
 .quad node_3
node_3: 
 .quad 457
 .quad node_4
node_4: 
 .quad 248
 .quad node_5
node_5: 
 .quad 457
 .quad node_6
node_6: 
 .quad 236
 .quad node_7
node_7: 
 .quad 350
 .quad node_8
node_8: 
 .quad 248
 .quad node_9
node_9: 
 .quad 370
 .quad node_10
node_10: 
 .quad 476
 .quad node_11
node_11: 
 .quad 114
 .quad node_12
node_12: 
 .quad 151
 .quad node_13
node_13: 
 .quad 248
 .quad node_14
node_14: 
 .quad 201
 .quad node_15
node_15: 
 .quad 1
 .quad node_16
node_16: 
 .quad 476
 .quad node_17
node_17: 
 .quad 167
 .quad node_18
node_18: 
 .quad 248
 .quad node_19
node_19: 
 .quad 114
 .quad node_20
node_20: 
 .quad 201
 .quad node_21
node_21: 
 .quad 151
 .quad 0

