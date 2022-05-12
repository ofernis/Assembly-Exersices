
.global _start

.section .text

# list before:
# [node_0:263]->[node_1:294]->[node_2:308]->[node_3:22]->[node_4:482]->[node_5:482]->[node_6:471]->[node_7:473]->[node_8:61]->[node_9:22]->[node_10:308]->[node_11:22]->[node_12:308]->[node_13:334]
# list after: (trying to swap 263 and 471)
# [node_6:471]->[node_1:294]->[node_2:308]->[node_3:22]->[node_4:482]->[node_5:482]->[node_0:263]->[node_7:473]->[node_8:61]->[node_9:22]->[node_10:308]->[node_11:22]->[node_12:308]->[node_13:334]

test_start:
    cmpq $node_6, (head)
    jne bad_exit
    
    cmpq $471, (node_6)
    jne bad_exit
    cmpq $node_1, (node_6+8)
    jne bad_exit

    cmpq $294, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $308, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $22, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $482, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $482, (node_5)
    jne bad_exit
    cmpq $node_0, (node_5+8)
    jne bad_exit

    cmpq $263, (node_0)
    jne bad_exit
    cmpq $node_7, (node_0+8)
    jne bad_exit

    cmpq $473, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $61, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $22, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $308, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $22, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $308, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $334, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
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
dst: .quad 471
node_0: 
 .quad 263
 .quad node_1
node_1: 
 .quad 294
 .quad node_2
node_2: 
 .quad 308
 .quad node_3
node_3: 
 .quad 22
 .quad node_4
node_4: 
 .quad 482
 .quad node_5
node_5: 
 .quad 482
 .quad node_6
node_6: 
 .quad 471
 .quad node_7
node_7: 
 .quad 473
 .quad node_8
node_8: 
 .quad 61
 .quad node_9
node_9: 
 .quad 22
 .quad node_10
node_10: 
 .quad 308
 .quad node_11
node_11: 
 .quad 22
 .quad node_12
node_12: 
 .quad 308
 .quad node_13
node_13: 
 .quad 334
 .quad 0

