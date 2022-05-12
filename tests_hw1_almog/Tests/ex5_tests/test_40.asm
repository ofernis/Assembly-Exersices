
.global _start

.section .text

# list before:
# [node_0:96]->[node_1:434]->[node_2:142]->[node_3:463]->[node_4:471]->[node_5:340]->[node_6:191]->[node_7:191]->[node_8:191]->[node_9:463]->[node_10:279]->[node_11:437]->[node_12:35]->[node_13:191]->[node_14:171]->[node_15:471]
# list after: (trying to swap 96 and 279)
# [node_10:279]->[node_1:434]->[node_2:142]->[node_3:463]->[node_4:471]->[node_5:340]->[node_6:191]->[node_7:191]->[node_8:191]->[node_9:463]->[node_0:96]->[node_11:437]->[node_12:35]->[node_13:191]->[node_14:171]->[node_15:471]

test_start:
    cmpq $node_10, (head)
    jne bad_exit
    
    cmpq $279, (node_10)
    jne bad_exit
    cmpq $node_1, (node_10+8)
    jne bad_exit

    cmpq $434, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $142, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $463, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $471, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $340, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $191, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $191, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $191, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $463, (node_9)
    jne bad_exit
    cmpq $node_0, (node_9+8)
    jne bad_exit

    cmpq $96, (node_0)
    jne bad_exit
    cmpq $node_11, (node_0+8)
    jne bad_exit

    cmpq $437, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $35, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $191, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $171, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $471, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
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
src: .quad 96
dst: .quad 279
node_0: 
 .quad 96
 .quad node_1
node_1: 
 .quad 434
 .quad node_2
node_2: 
 .quad 142
 .quad node_3
node_3: 
 .quad 463
 .quad node_4
node_4: 
 .quad 471
 .quad node_5
node_5: 
 .quad 340
 .quad node_6
node_6: 
 .quad 191
 .quad node_7
node_7: 
 .quad 191
 .quad node_8
node_8: 
 .quad 191
 .quad node_9
node_9: 
 .quad 463
 .quad node_10
node_10: 
 .quad 279
 .quad node_11
node_11: 
 .quad 437
 .quad node_12
node_12: 
 .quad 35
 .quad node_13
node_13: 
 .quad 191
 .quad node_14
node_14: 
 .quad 171
 .quad node_15
node_15: 
 .quad 471
 .quad 0

