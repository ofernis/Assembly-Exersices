
.global _start

.section .text

# list before:
# [node_0:336]->[node_1:218]->[node_2:269]->[node_3:171]->[node_4:269]->[node_5:163]->[node_6:163]->[node_7:126]->[node_8:218]->[node_9:213]->[node_10:106]->[node_11:171]->[node_12:152]->[node_13:357]->[node_14:37]->[node_15:269]->[node_16:114]->[node_17:58]->[node_18:37]->[node_19:383]->[node_20:58]
# list after: (trying to swap 114 and 383)
# [node_0:336]->[node_1:218]->[node_2:269]->[node_3:171]->[node_4:269]->[node_5:163]->[node_6:163]->[node_7:126]->[node_8:218]->[node_9:213]->[node_10:106]->[node_11:171]->[node_12:152]->[node_13:357]->[node_14:37]->[node_15:269]->[node_19:383]->[node_17:58]->[node_18:37]->[node_16:114]->[node_20:58]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $336, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $218, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $269, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $171, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $269, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $163, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $163, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $126, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $218, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $213, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $106, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $171, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $152, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $357, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $37, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $269, (node_15)
    jne bad_exit
    cmpq $node_19, (node_15+8)
    jne bad_exit

    cmpq $383, (node_19)
    jne bad_exit
    cmpq $node_17, (node_19+8)
    jne bad_exit

    cmpq $58, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $37, (node_18)
    jne bad_exit
    cmpq $node_16, (node_18+8)
    jne bad_exit

    cmpq $114, (node_16)
    jne bad_exit
    cmpq $node_20, (node_16+8)
    jne bad_exit

    cmpq $58, (node_20)
    jne bad_exit
    cmpq $0, (node_20+8)
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
src: .quad 114
dst: .quad 383
node_0: 
 .quad 336
 .quad node_1
node_1: 
 .quad 218
 .quad node_2
node_2: 
 .quad 269
 .quad node_3
node_3: 
 .quad 171
 .quad node_4
node_4: 
 .quad 269
 .quad node_5
node_5: 
 .quad 163
 .quad node_6
node_6: 
 .quad 163
 .quad node_7
node_7: 
 .quad 126
 .quad node_8
node_8: 
 .quad 218
 .quad node_9
node_9: 
 .quad 213
 .quad node_10
node_10: 
 .quad 106
 .quad node_11
node_11: 
 .quad 171
 .quad node_12
node_12: 
 .quad 152
 .quad node_13
node_13: 
 .quad 357
 .quad node_14
node_14: 
 .quad 37
 .quad node_15
node_15: 
 .quad 269
 .quad node_16
node_16: 
 .quad 114
 .quad node_17
node_17: 
 .quad 58
 .quad node_18
node_18: 
 .quad 37
 .quad node_19
node_19: 
 .quad 383
 .quad node_20
node_20: 
 .quad 58
 .quad 0

