
.global _start

.section .text

# list before:
# [node_0:450]->[node_1:36]->[node_2:356]->[node_3:70]->[node_4:204]->[node_5:356]->[node_6:462]->[node_7:500]->[node_8:427]->[node_9:217]->[node_10:459]->[node_11:204]->[node_12:70]->[node_13:441]->[node_14:500]->[node_15:470]->[node_16:194]
# list after: (trying to swap 450 and 462)
# [node_6:462]->[node_1:36]->[node_2:356]->[node_3:70]->[node_4:204]->[node_5:356]->[node_0:450]->[node_7:500]->[node_8:427]->[node_9:217]->[node_10:459]->[node_11:204]->[node_12:70]->[node_13:441]->[node_14:500]->[node_15:470]->[node_16:194]

test_start:
    cmpq $node_6, (head)
    jne bad_exit
    
    cmpq $462, (node_6)
    jne bad_exit
    cmpq $node_1, (node_6+8)
    jne bad_exit

    cmpq $36, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $356, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $70, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $204, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $356, (node_5)
    jne bad_exit
    cmpq $node_0, (node_5+8)
    jne bad_exit

    cmpq $450, (node_0)
    jne bad_exit
    cmpq $node_7, (node_0+8)
    jne bad_exit

    cmpq $500, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $427, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $217, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $459, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $204, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $70, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $441, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $500, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $470, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $194, (node_16)
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
src: .quad 450
dst: .quad 462
node_0: 
 .quad 450
 .quad node_1
node_1: 
 .quad 36
 .quad node_2
node_2: 
 .quad 356
 .quad node_3
node_3: 
 .quad 70
 .quad node_4
node_4: 
 .quad 204
 .quad node_5
node_5: 
 .quad 356
 .quad node_6
node_6: 
 .quad 462
 .quad node_7
node_7: 
 .quad 500
 .quad node_8
node_8: 
 .quad 427
 .quad node_9
node_9: 
 .quad 217
 .quad node_10
node_10: 
 .quad 459
 .quad node_11
node_11: 
 .quad 204
 .quad node_12
node_12: 
 .quad 70
 .quad node_13
node_13: 
 .quad 441
 .quad node_14
node_14: 
 .quad 500
 .quad node_15
node_15: 
 .quad 470
 .quad node_16
node_16: 
 .quad 194
 .quad 0

