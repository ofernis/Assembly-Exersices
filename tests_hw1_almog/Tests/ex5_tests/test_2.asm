
.global _start

.section .text

# list before:
# [node_0:91]->[node_1:26]->[node_2:26]->[node_3:49]->[node_4:227]->[node_5:351]->[node_6:494]->[node_7:37]->[node_8:76]->[node_9:389]->[node_10:381]->[node_11:494]->[node_12:491]->[node_13:369]->[node_14:101]->[node_15:389]->[node_16:377]
# list after: (trying to swap 491 and 76)
# [node_0:91]->[node_1:26]->[node_2:26]->[node_3:49]->[node_4:227]->[node_5:351]->[node_6:494]->[node_7:37]->[node_12:491]->[node_9:389]->[node_10:381]->[node_11:494]->[node_8:76]->[node_13:369]->[node_14:101]->[node_15:389]->[node_16:377]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $91, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $26, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $26, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $49, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $227, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $351, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $494, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $37, (node_7)
    jne bad_exit
    cmpq $node_12, (node_7+8)
    jne bad_exit

    cmpq $491, (node_12)
    jne bad_exit
    cmpq $node_9, (node_12+8)
    jne bad_exit

    cmpq $389, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $381, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $494, (node_11)
    jne bad_exit
    cmpq $node_8, (node_11+8)
    jne bad_exit

    cmpq $76, (node_8)
    jne bad_exit
    cmpq $node_13, (node_8+8)
    jne bad_exit

    cmpq $369, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $101, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $389, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $377, (node_16)
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
src: .quad 491
dst: .quad 76
node_0: 
 .quad 91
 .quad node_1
node_1: 
 .quad 26
 .quad node_2
node_2: 
 .quad 26
 .quad node_3
node_3: 
 .quad 49
 .quad node_4
node_4: 
 .quad 227
 .quad node_5
node_5: 
 .quad 351
 .quad node_6
node_6: 
 .quad 494
 .quad node_7
node_7: 
 .quad 37
 .quad node_8
node_8: 
 .quad 76
 .quad node_9
node_9: 
 .quad 389
 .quad node_10
node_10: 
 .quad 381
 .quad node_11
node_11: 
 .quad 494
 .quad node_12
node_12: 
 .quad 491
 .quad node_13
node_13: 
 .quad 369
 .quad node_14
node_14: 
 .quad 101
 .quad node_15
node_15: 
 .quad 389
 .quad node_16
node_16: 
 .quad 377
 .quad 0

