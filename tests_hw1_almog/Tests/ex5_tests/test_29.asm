
.global _start

.section .text

# list before:
# [node_0:454]->[node_1:325]->[node_2:454]->[node_3:493]->[node_4:454]->[node_5:493]->[node_6:493]->[node_7:325]->[node_8:493]->[node_9:498]->[node_10:337]->[node_11:498]
# list after: (trying to swap 454 and 493)
# [node_0:454]->[node_1:325]->[node_2:454]->[node_3:493]->[node_4:454]->[node_5:493]->[node_6:493]->[node_7:325]->[node_8:493]->[node_9:498]->[node_10:337]->[node_11:498]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $454, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $325, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $454, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $493, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $454, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $493, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $493, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $325, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $493, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $498, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $337, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $498, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
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
src: .quad 454
dst: .quad 493
node_0: 
 .quad 454
 .quad node_1
node_1: 
 .quad 325
 .quad node_2
node_2: 
 .quad 454
 .quad node_3
node_3: 
 .quad 493
 .quad node_4
node_4: 
 .quad 454
 .quad node_5
node_5: 
 .quad 493
 .quad node_6
node_6: 
 .quad 493
 .quad node_7
node_7: 
 .quad 325
 .quad node_8
node_8: 
 .quad 493
 .quad node_9
node_9: 
 .quad 498
 .quad node_10
node_10: 
 .quad 337
 .quad node_11
node_11: 
 .quad 498
 .quad 0

