
.global _start

.section .text

# list before:
# [node_0:452]->[node_1:192]->[node_2:192]->[node_3:454]->[node_4:472]->[node_5:192]->[node_6:167]->[node_7:167]->[node_8:454]->[node_9:472]->[node_10:5]->[node_11:335]->[node_12:489]->[node_13:462]->[node_14:489]->[node_15:454]->[node_16:5]
# list after: (trying to swap 452 and 452)
# [node_0:452]->[node_1:192]->[node_2:192]->[node_3:454]->[node_4:472]->[node_5:192]->[node_6:167]->[node_7:167]->[node_8:454]->[node_9:472]->[node_10:5]->[node_11:335]->[node_12:489]->[node_13:462]->[node_14:489]->[node_15:454]->[node_16:5]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $452, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $192, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $192, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $454, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $472, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $192, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $167, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $167, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $454, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $472, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $5, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $335, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $489, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $462, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $489, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $454, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $5, (node_16)
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
src: .quad 452
dst: .quad 452
node_0: 
 .quad 452
 .quad node_1
node_1: 
 .quad 192
 .quad node_2
node_2: 
 .quad 192
 .quad node_3
node_3: 
 .quad 454
 .quad node_4
node_4: 
 .quad 472
 .quad node_5
node_5: 
 .quad 192
 .quad node_6
node_6: 
 .quad 167
 .quad node_7
node_7: 
 .quad 167
 .quad node_8
node_8: 
 .quad 454
 .quad node_9
node_9: 
 .quad 472
 .quad node_10
node_10: 
 .quad 5
 .quad node_11
node_11: 
 .quad 335
 .quad node_12
node_12: 
 .quad 489
 .quad node_13
node_13: 
 .quad 462
 .quad node_14
node_14: 
 .quad 489
 .quad node_15
node_15: 
 .quad 454
 .quad node_16
node_16: 
 .quad 5
 .quad 0

