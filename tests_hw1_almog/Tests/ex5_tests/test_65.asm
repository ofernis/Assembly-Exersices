
.global _start

.section .text

# list before:
# [node_0:112]->[node_1:295]->[node_2:215]->[node_3:215]->[node_4:112]->[node_5:112]->[node_6:91]->[node_7:468]->[node_8:295]->[node_9:215]->[node_10:390]->[node_11:215]->[node_12:70]->[node_13:447]->[node_14:390]
# list after: (trying to swap 91 and 447)
# [node_0:112]->[node_1:295]->[node_2:215]->[node_3:215]->[node_4:112]->[node_5:112]->[node_13:447]->[node_7:468]->[node_8:295]->[node_9:215]->[node_10:390]->[node_11:215]->[node_12:70]->[node_6:91]->[node_14:390]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $112, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $295, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $215, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $215, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $112, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $112, (node_5)
    jne bad_exit
    cmpq $node_13, (node_5+8)
    jne bad_exit

    cmpq $447, (node_13)
    jne bad_exit
    cmpq $node_7, (node_13+8)
    jne bad_exit

    cmpq $468, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $295, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $215, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $390, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $215, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $70, (node_12)
    jne bad_exit
    cmpq $node_6, (node_12+8)
    jne bad_exit

    cmpq $91, (node_6)
    jne bad_exit
    cmpq $node_14, (node_6+8)
    jne bad_exit

    cmpq $390, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
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
src: .quad 91
dst: .quad 447
node_0: 
 .quad 112
 .quad node_1
node_1: 
 .quad 295
 .quad node_2
node_2: 
 .quad 215
 .quad node_3
node_3: 
 .quad 215
 .quad node_4
node_4: 
 .quad 112
 .quad node_5
node_5: 
 .quad 112
 .quad node_6
node_6: 
 .quad 91
 .quad node_7
node_7: 
 .quad 468
 .quad node_8
node_8: 
 .quad 295
 .quad node_9
node_9: 
 .quad 215
 .quad node_10
node_10: 
 .quad 390
 .quad node_11
node_11: 
 .quad 215
 .quad node_12
node_12: 
 .quad 70
 .quad node_13
node_13: 
 .quad 447
 .quad node_14
node_14: 
 .quad 390
 .quad 0

