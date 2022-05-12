
.global _start

.section .text

# list before:
# [node_0:322]->[node_1:180]->[node_2:178]->[node_3:229]->[node_4:233]->[node_5:229]->[node_6:494]->[node_7:370]->[node_8:370]->[node_9:370]->[node_10:234]->[node_11:233]->[node_12:234]->[node_13:77]->[node_14:233]->[node_15:229]->[node_16:233]->[node_17:180]
# list after: (trying to swap 77 and 322)
# [node_13:77]->[node_1:180]->[node_2:178]->[node_3:229]->[node_4:233]->[node_5:229]->[node_6:494]->[node_7:370]->[node_8:370]->[node_9:370]->[node_10:234]->[node_11:233]->[node_12:234]->[node_0:322]->[node_14:233]->[node_15:229]->[node_16:233]->[node_17:180]

test_start:
    cmpq $node_13, (head)
    jne bad_exit
    
    cmpq $77, (node_13)
    jne bad_exit
    cmpq $node_1, (node_13+8)
    jne bad_exit

    cmpq $180, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $178, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $229, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $233, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $229, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $494, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $370, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $370, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $370, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $234, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $233, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $234, (node_12)
    jne bad_exit
    cmpq $node_0, (node_12+8)
    jne bad_exit

    cmpq $322, (node_0)
    jne bad_exit
    cmpq $node_14, (node_0+8)
    jne bad_exit

    cmpq $233, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $229, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $233, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $180, (node_17)
    jne bad_exit
    cmpq $0, (node_17+8)
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
src: .quad 77
dst: .quad 322
node_0: 
 .quad 322
 .quad node_1
node_1: 
 .quad 180
 .quad node_2
node_2: 
 .quad 178
 .quad node_3
node_3: 
 .quad 229
 .quad node_4
node_4: 
 .quad 233
 .quad node_5
node_5: 
 .quad 229
 .quad node_6
node_6: 
 .quad 494
 .quad node_7
node_7: 
 .quad 370
 .quad node_8
node_8: 
 .quad 370
 .quad node_9
node_9: 
 .quad 370
 .quad node_10
node_10: 
 .quad 234
 .quad node_11
node_11: 
 .quad 233
 .quad node_12
node_12: 
 .quad 234
 .quad node_13
node_13: 
 .quad 77
 .quad node_14
node_14: 
 .quad 233
 .quad node_15
node_15: 
 .quad 229
 .quad node_16
node_16: 
 .quad 233
 .quad node_17
node_17: 
 .quad 180
 .quad 0

