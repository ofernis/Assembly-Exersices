
.global _start

.section .text

# list before:
# [node_0:367]->[node_1:159]->[node_2:117]->[node_3:123]->[node_4:324]
# list after: (trying to swap 159 and 324)
# [node_0:367]->[node_4:324]->[node_2:117]->[node_3:123]->[node_1:159]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $367, (node_0)
    jne bad_exit
    cmpq $node_4, (node_0+8)
    jne bad_exit

    cmpq $324, (node_4)
    jne bad_exit
    cmpq $node_2, (node_4+8)
    jne bad_exit

    cmpq $117, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $123, (node_3)
    jne bad_exit
    cmpq $node_1, (node_3+8)
    jne bad_exit

    cmpq $159, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
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
src: .quad 159
dst: .quad 324
node_0: 
 .quad 367
 .quad node_1
node_1: 
 .quad 159
 .quad node_2
node_2: 
 .quad 117
 .quad node_3
node_3: 
 .quad 123
 .quad node_4
node_4: 
 .quad 324
 .quad 0

