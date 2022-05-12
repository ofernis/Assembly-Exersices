
.global _start

.section .text

# list before:
# [node_0:419]->[node_1:355]->[node_2:69]->[node_3:419]->[node_4:69]->[node_5:419]->[node_6:69]->[node_7:419]->[node_8:355]->[node_9:188]->[node_10:255]->[node_11:327]->[node_12:305]->[node_13:69]
# list after: (trying to swap 188 and 327)
# [node_0:419]->[node_1:355]->[node_2:69]->[node_3:419]->[node_4:69]->[node_5:419]->[node_6:69]->[node_7:419]->[node_8:355]->[node_11:327]->[node_10:255]->[node_9:188]->[node_12:305]->[node_13:69]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $419, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $355, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $69, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $419, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $69, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $419, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $69, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $419, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $355, (node_8)
    jne bad_exit
    cmpq $node_11, (node_8+8)
    jne bad_exit

    cmpq $327, (node_11)
    jne bad_exit
    cmpq $node_10, (node_11+8)
    jne bad_exit

    cmpq $255, (node_10)
    jne bad_exit
    cmpq $node_9, (node_10+8)
    jne bad_exit

    cmpq $188, (node_9)
    jne bad_exit
    cmpq $node_12, (node_9+8)
    jne bad_exit

    cmpq $305, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $69, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
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
src: .quad 188
dst: .quad 327
node_0: 
 .quad 419
 .quad node_1
node_1: 
 .quad 355
 .quad node_2
node_2: 
 .quad 69
 .quad node_3
node_3: 
 .quad 419
 .quad node_4
node_4: 
 .quad 69
 .quad node_5
node_5: 
 .quad 419
 .quad node_6
node_6: 
 .quad 69
 .quad node_7
node_7: 
 .quad 419
 .quad node_8
node_8: 
 .quad 355
 .quad node_9
node_9: 
 .quad 188
 .quad node_10
node_10: 
 .quad 255
 .quad node_11
node_11: 
 .quad 327
 .quad node_12
node_12: 
 .quad 305
 .quad node_13
node_13: 
 .quad 69
 .quad 0

