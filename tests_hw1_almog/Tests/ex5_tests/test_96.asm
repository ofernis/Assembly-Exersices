
.global _start

.section .text

# list before:
# [node_0:110]->[node_1:281]->[node_2:467]->[node_3:210]->[node_4:67]->[node_5:67]->[node_6:467]->[node_7:158]->[node_8:158]->[node_9:67]->[node_10:110]
# list after: (trying to swap 281 and 210)
# [node_0:110]->[node_3:210]->[node_2:467]->[node_1:281]->[node_4:67]->[node_5:67]->[node_6:467]->[node_7:158]->[node_8:158]->[node_9:67]->[node_10:110]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $110, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit

    cmpq $210, (node_3)
    jne bad_exit
    cmpq $node_2, (node_3+8)
    jne bad_exit

    cmpq $467, (node_2)
    jne bad_exit
    cmpq $node_1, (node_2+8)
    jne bad_exit

    cmpq $281, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit

    cmpq $67, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $67, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $467, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $158, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $158, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $67, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $110, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
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
src: .quad 281
dst: .quad 210
node_0: 
 .quad 110
 .quad node_1
node_1: 
 .quad 281
 .quad node_2
node_2: 
 .quad 467
 .quad node_3
node_3: 
 .quad 210
 .quad node_4
node_4: 
 .quad 67
 .quad node_5
node_5: 
 .quad 67
 .quad node_6
node_6: 
 .quad 467
 .quad node_7
node_7: 
 .quad 158
 .quad node_8
node_8: 
 .quad 158
 .quad node_9
node_9: 
 .quad 67
 .quad node_10
node_10: 
 .quad 110
 .quad 0

