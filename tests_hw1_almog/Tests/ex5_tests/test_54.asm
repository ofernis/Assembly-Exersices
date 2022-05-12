
.global _start

.section .text

# list before:
# [node_0:244]->[node_1:35]->[node_2:35]->[node_3:464]->[node_4:302]->[node_5:417]->[node_6:70]->[node_7:282]
# list after: (trying to swap 244 and 302)
# [node_4:302]->[node_1:35]->[node_2:35]->[node_3:464]->[node_0:244]->[node_5:417]->[node_6:70]->[node_7:282]

test_start:
    cmpq $node_4, (head)
    jne bad_exit
    
    cmpq $302, (node_4)
    jne bad_exit
    cmpq $node_1, (node_4+8)
    jne bad_exit

    cmpq $35, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $35, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $464, (node_3)
    jne bad_exit
    cmpq $node_0, (node_3+8)
    jne bad_exit

    cmpq $244, (node_0)
    jne bad_exit
    cmpq $node_5, (node_0+8)
    jne bad_exit

    cmpq $417, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $70, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $282, (node_7)
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
src: .quad 244
dst: .quad 302
node_0: 
 .quad 244
 .quad node_1
node_1: 
 .quad 35
 .quad node_2
node_2: 
 .quad 35
 .quad node_3
node_3: 
 .quad 464
 .quad node_4
node_4: 
 .quad 302
 .quad node_5
node_5: 
 .quad 417
 .quad node_6
node_6: 
 .quad 70
 .quad node_7
node_7: 
 .quad 282
 .quad 0

