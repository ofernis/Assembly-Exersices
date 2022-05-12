
.global _start

.section .text

# list before:
# [node_0:380]->[node_1:380]->[node_2:232]->[node_3:272]->[node_4:400]->[node_5:234]->[node_6:211]->[node_7:421]->[node_8:421]->[node_9:421]->[node_10:472]->[node_11:232]->[node_12:211]->[node_13:368]->[node_14:234]
# list after: (trying to swap 400 and 472)
# [node_0:380]->[node_1:380]->[node_2:232]->[node_3:272]->[node_10:472]->[node_5:234]->[node_6:211]->[node_7:421]->[node_8:421]->[node_9:421]->[node_4:400]->[node_11:232]->[node_12:211]->[node_13:368]->[node_14:234]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $380, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $380, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $232, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $272, (node_3)
    jne bad_exit
    cmpq $node_10, (node_3+8)
    jne bad_exit

    cmpq $472, (node_10)
    jne bad_exit
    cmpq $node_5, (node_10+8)
    jne bad_exit

    cmpq $234, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $211, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $421, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $421, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $421, (node_9)
    jne bad_exit
    cmpq $node_4, (node_9+8)
    jne bad_exit

    cmpq $400, (node_4)
    jne bad_exit
    cmpq $node_11, (node_4+8)
    jne bad_exit

    cmpq $232, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $211, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $368, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $234, (node_14)
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
src: .quad 400
dst: .quad 472
node_0: 
 .quad 380
 .quad node_1
node_1: 
 .quad 380
 .quad node_2
node_2: 
 .quad 232
 .quad node_3
node_3: 
 .quad 272
 .quad node_4
node_4: 
 .quad 400
 .quad node_5
node_5: 
 .quad 234
 .quad node_6
node_6: 
 .quad 211
 .quad node_7
node_7: 
 .quad 421
 .quad node_8
node_8: 
 .quad 421
 .quad node_9
node_9: 
 .quad 421
 .quad node_10
node_10: 
 .quad 472
 .quad node_11
node_11: 
 .quad 232
 .quad node_12
node_12: 
 .quad 211
 .quad node_13
node_13: 
 .quad 368
 .quad node_14
node_14: 
 .quad 234
 .quad 0

