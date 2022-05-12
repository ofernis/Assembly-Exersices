
.global _start

.section .text

# list before:
# [node_0:334]->[node_1:383]->[node_2:485]->[node_3:345]->[node_4:485]->[node_5:333]->[node_6:129]->[node_7:490]->[node_8:264]->[node_9:412]->[node_10:383]->[node_11:412]->[node_12:377]->[node_13:485]->[node_14:264]->[node_15:93]->[node_16:264]
# list after: (trying to swap 490 and 333)
# [node_0:334]->[node_1:383]->[node_2:485]->[node_3:345]->[node_4:485]->[node_7:490]->[node_6:129]->[node_5:333]->[node_8:264]->[node_9:412]->[node_10:383]->[node_11:412]->[node_12:377]->[node_13:485]->[node_14:264]->[node_15:93]->[node_16:264]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $334, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $383, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $485, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $345, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $485, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit

    cmpq $490, (node_7)
    jne bad_exit
    cmpq $node_6, (node_7+8)
    jne bad_exit

    cmpq $129, (node_6)
    jne bad_exit
    cmpq $node_5, (node_6+8)
    jne bad_exit

    cmpq $333, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit

    cmpq $264, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $412, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $383, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $412, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $377, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $485, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $264, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $93, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $264, (node_16)
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
src: .quad 490
dst: .quad 333
node_0: 
 .quad 334
 .quad node_1
node_1: 
 .quad 383
 .quad node_2
node_2: 
 .quad 485
 .quad node_3
node_3: 
 .quad 345
 .quad node_4
node_4: 
 .quad 485
 .quad node_5
node_5: 
 .quad 333
 .quad node_6
node_6: 
 .quad 129
 .quad node_7
node_7: 
 .quad 490
 .quad node_8
node_8: 
 .quad 264
 .quad node_9
node_9: 
 .quad 412
 .quad node_10
node_10: 
 .quad 383
 .quad node_11
node_11: 
 .quad 412
 .quad node_12
node_12: 
 .quad 377
 .quad node_13
node_13: 
 .quad 485
 .quad node_14
node_14: 
 .quad 264
 .quad node_15
node_15: 
 .quad 93
 .quad node_16
node_16: 
 .quad 264
 .quad 0

