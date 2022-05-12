
.global _start

.section .text

# list before:
# [node_0:377]->[node_1:268]->[node_2:467]->[node_3:210]->[node_4:356]->[node_5:144]->[node_6:274]->[node_7:94]->[node_8:356]->[node_9:383]->[node_10:217]->[node_11:268]->[node_12:238]->[node_13:63]->[node_14:426]
# list after: (trying to swap 467 and 210)
# [node_0:377]->[node_1:268]->[node_3:210]->[node_2:467]->[node_4:356]->[node_5:144]->[node_6:274]->[node_7:94]->[node_8:356]->[node_9:383]->[node_10:217]->[node_11:268]->[node_12:238]->[node_13:63]->[node_14:426]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $377, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $268, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit

    cmpq $210, (node_3)
    jne bad_exit
    cmpq $node_2, (node_3+8)
    jne bad_exit

    cmpq $467, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit

    cmpq $356, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $144, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $274, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $94, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $356, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $383, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $217, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $268, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $238, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $63, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $426, (node_14)
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
src: .quad 467
dst: .quad 210
node_0: 
 .quad 377
 .quad node_1
node_1: 
 .quad 268
 .quad node_2
node_2: 
 .quad 467
 .quad node_3
node_3: 
 .quad 210
 .quad node_4
node_4: 
 .quad 356
 .quad node_5
node_5: 
 .quad 144
 .quad node_6
node_6: 
 .quad 274
 .quad node_7
node_7: 
 .quad 94
 .quad node_8
node_8: 
 .quad 356
 .quad node_9
node_9: 
 .quad 383
 .quad node_10
node_10: 
 .quad 217
 .quad node_11
node_11: 
 .quad 268
 .quad node_12
node_12: 
 .quad 238
 .quad node_13
node_13: 
 .quad 63
 .quad node_14
node_14: 
 .quad 426
 .quad 0

