
.global _start

.section .text

# list before:
# [node_0:59]->[node_1:162]->[node_2:162]->[node_3:215]->[node_4:90]->[node_5:444]->[node_6:267]->[node_7:53]->[node_8:357]->[node_9:61]->[node_10:404]->[node_11:133]->[node_12:446]->[node_13:446]->[node_14:215]
# list after: (trying to swap 444 and 61)
# [node_0:59]->[node_1:162]->[node_2:162]->[node_3:215]->[node_4:90]->[node_9:61]->[node_6:267]->[node_7:53]->[node_8:357]->[node_5:444]->[node_10:404]->[node_11:133]->[node_12:446]->[node_13:446]->[node_14:215]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $59, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $162, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $162, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $215, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $90, (node_4)
    jne bad_exit
    cmpq $node_9, (node_4+8)
    jne bad_exit

    cmpq $61, (node_9)
    jne bad_exit
    cmpq $node_6, (node_9+8)
    jne bad_exit

    cmpq $267, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $53, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $357, (node_8)
    jne bad_exit
    cmpq $node_5, (node_8+8)
    jne bad_exit

    cmpq $444, (node_5)
    jne bad_exit
    cmpq $node_10, (node_5+8)
    jne bad_exit

    cmpq $404, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $133, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $446, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $446, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $215, (node_14)
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
src: .quad 444
dst: .quad 61
node_0: 
 .quad 59
 .quad node_1
node_1: 
 .quad 162
 .quad node_2
node_2: 
 .quad 162
 .quad node_3
node_3: 
 .quad 215
 .quad node_4
node_4: 
 .quad 90
 .quad node_5
node_5: 
 .quad 444
 .quad node_6
node_6: 
 .quad 267
 .quad node_7
node_7: 
 .quad 53
 .quad node_8
node_8: 
 .quad 357
 .quad node_9
node_9: 
 .quad 61
 .quad node_10
node_10: 
 .quad 404
 .quad node_11
node_11: 
 .quad 133
 .quad node_12
node_12: 
 .quad 446
 .quad node_13
node_13: 
 .quad 446
 .quad node_14
node_14: 
 .quad 215
 .quad 0

