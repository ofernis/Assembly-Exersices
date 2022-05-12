
.global _start

.section .text

# list before:
# [node_0:342]->[node_1:342]->[node_2:181]->[node_3:86]->[node_4:181]->[node_5:493]->[node_6:225]->[node_7:181]
# list after: (trying to swap 493 and 225)
# [node_0:342]->[node_1:342]->[node_2:181]->[node_3:86]->[node_4:181]->[node_6:225]->[node_5:493]->[node_7:181]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $342, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $342, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $181, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $86, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $181, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit

    cmpq $225, (node_6)
    jne bad_exit
    cmpq $node_5, (node_6+8)
    jne bad_exit

    cmpq $493, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit

    cmpq $181, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
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
src: .quad 493
dst: .quad 225
node_0: 
 .quad 342
 .quad node_1
node_1: 
 .quad 342
 .quad node_2
node_2: 
 .quad 181
 .quad node_3
node_3: 
 .quad 86
 .quad node_4
node_4: 
 .quad 181
 .quad node_5
node_5: 
 .quad 493
 .quad node_6
node_6: 
 .quad 225
 .quad node_7
node_7: 
 .quad 181
 .quad 0

