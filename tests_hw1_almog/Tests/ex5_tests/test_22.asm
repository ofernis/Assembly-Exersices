
.global _start

.section .text

# list before:
# [node_0:492]->[node_1:492]->[node_2:433]->[node_3:458]->[node_4:458]->[node_5:314]->[node_6:162]->[node_7:252]->[node_8:314]->[node_9:492]->[node_10:29]->[node_11:462]->[node_12:314]->[node_13:492]->[node_14:427]->[node_15:151]->[node_16:207]
# list after: (trying to swap 314 and 478)
# [node_0:492]->[node_1:492]->[node_2:433]->[node_3:458]->[node_4:458]->[node_5:314]->[node_6:162]->[node_7:252]->[node_8:314]->[node_9:492]->[node_10:29]->[node_11:462]->[node_12:314]->[node_13:492]->[node_14:427]->[node_15:151]->[node_16:207]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $492, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $492, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $433, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $458, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $458, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $314, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $162, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $252, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $314, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $492, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $29, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $462, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $314, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $492, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $427, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $151, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $207, (node_16)
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
src: .quad 314
dst: .quad 478
node_0: 
 .quad 492
 .quad node_1
node_1: 
 .quad 492
 .quad node_2
node_2: 
 .quad 433
 .quad node_3
node_3: 
 .quad 458
 .quad node_4
node_4: 
 .quad 458
 .quad node_5
node_5: 
 .quad 314
 .quad node_6
node_6: 
 .quad 162
 .quad node_7
node_7: 
 .quad 252
 .quad node_8
node_8: 
 .quad 314
 .quad node_9
node_9: 
 .quad 492
 .quad node_10
node_10: 
 .quad 29
 .quad node_11
node_11: 
 .quad 462
 .quad node_12
node_12: 
 .quad 314
 .quad node_13
node_13: 
 .quad 492
 .quad node_14
node_14: 
 .quad 427
 .quad node_15
node_15: 
 .quad 151
 .quad node_16
node_16: 
 .quad 207
 .quad 0

