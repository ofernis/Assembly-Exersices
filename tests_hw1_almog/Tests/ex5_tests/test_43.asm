
.global _start

.section .text

# list before:
# [node_0:84]->[node_1:195]->[node_2:195]->[node_3:473]->[node_4:465]->[node_5:39]->[node_6:195]->[node_7:195]->[node_8:21]->[node_9:84]
# list after: (trying to swap 465 and 21)
# [node_0:84]->[node_1:195]->[node_2:195]->[node_3:473]->[node_8:21]->[node_5:39]->[node_6:195]->[node_7:195]->[node_4:465]->[node_9:84]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $84, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $195, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $195, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $473, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit

    cmpq $21, (node_8)
    jne bad_exit
    cmpq $node_5, (node_8+8)
    jne bad_exit

    cmpq $39, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $195, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $195, (node_7)
    jne bad_exit
    cmpq $node_4, (node_7+8)
    jne bad_exit

    cmpq $465, (node_4)
    jne bad_exit
    cmpq $node_9, (node_4+8)
    jne bad_exit

    cmpq $84, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
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
src: .quad 465
dst: .quad 21
node_0: 
 .quad 84
 .quad node_1
node_1: 
 .quad 195
 .quad node_2
node_2: 
 .quad 195
 .quad node_3
node_3: 
 .quad 473
 .quad node_4
node_4: 
 .quad 465
 .quad node_5
node_5: 
 .quad 39
 .quad node_6
node_6: 
 .quad 195
 .quad node_7
node_7: 
 .quad 195
 .quad node_8
node_8: 
 .quad 21
 .quad node_9
node_9: 
 .quad 84
 .quad 0

