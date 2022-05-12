
.global _start

.section .text

# list before:
# [node_0:386]->[node_1:207]->[node_2:177]->[node_3:55]->[node_4:491]->[node_5:177]->[node_6:177]->[node_7:412]->[node_8:491]->[node_9:177]->[node_10:124]->[node_11:55]->[node_12:116]->[node_13:177]->[node_14:300]->[node_15:386]->[node_16:152]->[node_17:177]->[node_18:79]->[node_19:79]->[node_20:124]
# list after: (trying to swap 412 and 177)
# [node_0:386]->[node_1:207]->[node_2:177]->[node_3:55]->[node_4:491]->[node_5:177]->[node_6:177]->[node_7:412]->[node_8:491]->[node_9:177]->[node_10:124]->[node_11:55]->[node_12:116]->[node_13:177]->[node_14:300]->[node_15:386]->[node_16:152]->[node_17:177]->[node_18:79]->[node_19:79]->[node_20:124]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $386, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $207, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $177, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $55, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $491, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $177, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $177, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $412, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $491, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $177, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $124, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $55, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $116, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $177, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $300, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $386, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $152, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $177, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $79, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $79, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $124, (node_20)
    jne bad_exit
    cmpq $0, (node_20+8)
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
src: .quad 412
dst: .quad 177
node_0: 
 .quad 386
 .quad node_1
node_1: 
 .quad 207
 .quad node_2
node_2: 
 .quad 177
 .quad node_3
node_3: 
 .quad 55
 .quad node_4
node_4: 
 .quad 491
 .quad node_5
node_5: 
 .quad 177
 .quad node_6
node_6: 
 .quad 177
 .quad node_7
node_7: 
 .quad 412
 .quad node_8
node_8: 
 .quad 491
 .quad node_9
node_9: 
 .quad 177
 .quad node_10
node_10: 
 .quad 124
 .quad node_11
node_11: 
 .quad 55
 .quad node_12
node_12: 
 .quad 116
 .quad node_13
node_13: 
 .quad 177
 .quad node_14
node_14: 
 .quad 300
 .quad node_15
node_15: 
 .quad 386
 .quad node_16
node_16: 
 .quad 152
 .quad node_17
node_17: 
 .quad 177
 .quad node_18
node_18: 
 .quad 79
 .quad node_19
node_19: 
 .quad 79
 .quad node_20
node_20: 
 .quad 124
 .quad 0

