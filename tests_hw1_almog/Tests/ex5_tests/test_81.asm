
.global _start

.section .text

# list before:
# [node_0:6]->[node_1:312]->[node_2:128]->[node_3:6]->[node_4:407]->[node_5:89]->[node_6:6]->[node_7:89]->[node_8:102]->[node_9:312]->[node_10:453]->[node_11:407]
# list after: (trying to swap 102 and 453)
# [node_0:6]->[node_1:312]->[node_2:128]->[node_3:6]->[node_4:407]->[node_5:89]->[node_6:6]->[node_7:89]->[node_10:453]->[node_9:312]->[node_8:102]->[node_11:407]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $6, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $312, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $128, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $6, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $407, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $89, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $6, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $89, (node_7)
    jne bad_exit
    cmpq $node_10, (node_7+8)
    jne bad_exit

    cmpq $453, (node_10)
    jne bad_exit
    cmpq $node_9, (node_10+8)
    jne bad_exit

    cmpq $312, (node_9)
    jne bad_exit
    cmpq $node_8, (node_9+8)
    jne bad_exit

    cmpq $102, (node_8)
    jne bad_exit
    cmpq $node_11, (node_8+8)
    jne bad_exit

    cmpq $407, (node_11)
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
src: .quad 102
dst: .quad 453
node_0: 
 .quad 6
 .quad node_1
node_1: 
 .quad 312
 .quad node_2
node_2: 
 .quad 128
 .quad node_3
node_3: 
 .quad 6
 .quad node_4
node_4: 
 .quad 407
 .quad node_5
node_5: 
 .quad 89
 .quad node_6
node_6: 
 .quad 6
 .quad node_7
node_7: 
 .quad 89
 .quad node_8
node_8: 
 .quad 102
 .quad node_9
node_9: 
 .quad 312
 .quad node_10
node_10: 
 .quad 453
 .quad node_11
node_11: 
 .quad 407
 .quad 0

