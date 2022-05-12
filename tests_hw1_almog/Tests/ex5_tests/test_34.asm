
.global _start

.section .text

# list before:
# [node_0:193]->[node_1:163]->[node_2:102]->[node_3:123]->[node_4:310]->[node_5:303]->[node_6:336]->[node_7:222]->[node_8:257]->[node_9:336]->[node_10:122]->[node_11:35]->[node_12:379]
# list after: (trying to swap 193 and 222)
# [node_7:222]->[node_1:163]->[node_2:102]->[node_3:123]->[node_4:310]->[node_5:303]->[node_6:336]->[node_0:193]->[node_8:257]->[node_9:336]->[node_10:122]->[node_11:35]->[node_12:379]

test_start:
    cmpq $node_7, (head)
    jne bad_exit
    
    cmpq $222, (node_7)
    jne bad_exit
    cmpq $node_1, (node_7+8)
    jne bad_exit

    cmpq $163, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $102, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $123, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $310, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $303, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $336, (node_6)
    jne bad_exit
    cmpq $node_0, (node_6+8)
    jne bad_exit

    cmpq $193, (node_0)
    jne bad_exit
    cmpq $node_8, (node_0+8)
    jne bad_exit

    cmpq $257, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $336, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $122, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $35, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $379, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
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
src: .quad 193
dst: .quad 222
node_0: 
 .quad 193
 .quad node_1
node_1: 
 .quad 163
 .quad node_2
node_2: 
 .quad 102
 .quad node_3
node_3: 
 .quad 123
 .quad node_4
node_4: 
 .quad 310
 .quad node_5
node_5: 
 .quad 303
 .quad node_6
node_6: 
 .quad 336
 .quad node_7
node_7: 
 .quad 222
 .quad node_8
node_8: 
 .quad 257
 .quad node_9
node_9: 
 .quad 336
 .quad node_10
node_10: 
 .quad 122
 .quad node_11
node_11: 
 .quad 35
 .quad node_12
node_12: 
 .quad 379
 .quad 0

