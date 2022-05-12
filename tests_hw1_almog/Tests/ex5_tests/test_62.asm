
.global _start

.section .text

# list before:
# [node_0:454]->[node_1:491]->[node_2:142]->[node_3:454]->[node_4:128]->[node_5:363]->[node_6:363]->[node_7:384]->[node_8:176]->[node_9:142]->[node_10:454]->[node_11:127]->[node_12:94]
# list after: (trying to swap 491 and 128)
# [node_0:454]->[node_4:128]->[node_2:142]->[node_3:454]->[node_1:491]->[node_5:363]->[node_6:363]->[node_7:384]->[node_8:176]->[node_9:142]->[node_10:454]->[node_11:127]->[node_12:94]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $454, (node_0)
    jne bad_exit
    cmpq $node_4, (node_0+8)
    jne bad_exit

    cmpq $128, (node_4)
    jne bad_exit
    cmpq $node_2, (node_4+8)
    jne bad_exit

    cmpq $142, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $454, (node_3)
    jne bad_exit
    cmpq $node_1, (node_3+8)
    jne bad_exit

    cmpq $491, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit

    cmpq $363, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $363, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $384, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $176, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $142, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $454, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $127, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $94, (node_12)
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
src: .quad 491
dst: .quad 128
node_0: 
 .quad 454
 .quad node_1
node_1: 
 .quad 491
 .quad node_2
node_2: 
 .quad 142
 .quad node_3
node_3: 
 .quad 454
 .quad node_4
node_4: 
 .quad 128
 .quad node_5
node_5: 
 .quad 363
 .quad node_6
node_6: 
 .quad 363
 .quad node_7
node_7: 
 .quad 384
 .quad node_8
node_8: 
 .quad 176
 .quad node_9
node_9: 
 .quad 142
 .quad node_10
node_10: 
 .quad 454
 .quad node_11
node_11: 
 .quad 127
 .quad node_12
node_12: 
 .quad 94
 .quad 0

