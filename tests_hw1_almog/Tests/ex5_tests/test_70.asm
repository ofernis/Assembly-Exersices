
.global _start

.section .text

# list before:
# [node_0:89]->[node_1:89]->[node_2:461]->[node_3:330]->[node_4:411]->[node_5:109]->[node_6:204]->[node_7:2]->[node_8:231]->[node_9:150]->[node_10:108]->[node_11:364]->[node_12:150]->[node_13:89]->[node_14:204]->[node_15:109]
# list after: (trying to swap 2 and 231)
# [node_0:89]->[node_1:89]->[node_2:461]->[node_3:330]->[node_4:411]->[node_5:109]->[node_6:204]->[node_8:231]->[node_7:2]->[node_9:150]->[node_10:108]->[node_11:364]->[node_12:150]->[node_13:89]->[node_14:204]->[node_15:109]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $89, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $89, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $461, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $330, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $411, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $109, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $204, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit

    cmpq $231, (node_8)
    jne bad_exit
    cmpq $node_7, (node_8+8)
    jne bad_exit

    cmpq $2, (node_7)
    jne bad_exit
    cmpq $node_9, (node_7+8)
    jne bad_exit

    cmpq $150, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $108, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $364, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $150, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $89, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $204, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $109, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
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
src: .quad 2
dst: .quad 231
node_0: 
 .quad 89
 .quad node_1
node_1: 
 .quad 89
 .quad node_2
node_2: 
 .quad 461
 .quad node_3
node_3: 
 .quad 330
 .quad node_4
node_4: 
 .quad 411
 .quad node_5
node_5: 
 .quad 109
 .quad node_6
node_6: 
 .quad 204
 .quad node_7
node_7: 
 .quad 2
 .quad node_8
node_8: 
 .quad 231
 .quad node_9
node_9: 
 .quad 150
 .quad node_10
node_10: 
 .quad 108
 .quad node_11
node_11: 
 .quad 364
 .quad node_12
node_12: 
 .quad 150
 .quad node_13
node_13: 
 .quad 89
 .quad node_14
node_14: 
 .quad 204
 .quad node_15
node_15: 
 .quad 109
 .quad 0

