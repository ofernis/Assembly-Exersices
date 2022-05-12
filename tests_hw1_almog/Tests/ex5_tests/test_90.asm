
.global _start

.section .text

# list before:
# [node_0:84]->[node_1:482]->[node_2:228]->[node_3:11]->[node_4:481]->[node_5:481]->[node_6:16]->[node_7:198]->[node_8:138]
# list after: (trying to swap 482 and 198)
# [node_0:84]->[node_7:198]->[node_2:228]->[node_3:11]->[node_4:481]->[node_5:481]->[node_6:16]->[node_1:482]->[node_8:138]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $84, (node_0)
    jne bad_exit
    cmpq $node_7, (node_0+8)
    jne bad_exit

    cmpq $198, (node_7)
    jne bad_exit
    cmpq $node_2, (node_7+8)
    jne bad_exit

    cmpq $228, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $11, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $481, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $481, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $16, (node_6)
    jne bad_exit
    cmpq $node_1, (node_6+8)
    jne bad_exit

    cmpq $482, (node_1)
    jne bad_exit
    cmpq $node_8, (node_1+8)
    jne bad_exit

    cmpq $138, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
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
src: .quad 482
dst: .quad 198
node_0: 
 .quad 84
 .quad node_1
node_1: 
 .quad 482
 .quad node_2
node_2: 
 .quad 228
 .quad node_3
node_3: 
 .quad 11
 .quad node_4
node_4: 
 .quad 481
 .quad node_5
node_5: 
 .quad 481
 .quad node_6
node_6: 
 .quad 16
 .quad node_7
node_7: 
 .quad 198
 .quad node_8
node_8: 
 .quad 138
 .quad 0

