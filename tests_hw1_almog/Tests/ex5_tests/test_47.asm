
.global _start

.section .text

# list before:
# [node_0:333]->[node_1:150]->[node_2:150]->[node_3:120]->[node_4:134]->[node_5:120]->[node_6:333]->[node_7:342]->[node_8:150]
# list after: (trying to swap 134 and 342)
# [node_0:333]->[node_1:150]->[node_2:150]->[node_3:120]->[node_7:342]->[node_5:120]->[node_6:333]->[node_4:134]->[node_8:150]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $333, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $150, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $150, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $120, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit

    cmpq $342, (node_7)
    jne bad_exit
    cmpq $node_5, (node_7+8)
    jne bad_exit

    cmpq $120, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $333, (node_6)
    jne bad_exit
    cmpq $node_4, (node_6+8)
    jne bad_exit

    cmpq $134, (node_4)
    jne bad_exit
    cmpq $node_8, (node_4+8)
    jne bad_exit

    cmpq $150, (node_8)
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
src: .quad 134
dst: .quad 342
node_0: 
 .quad 333
 .quad node_1
node_1: 
 .quad 150
 .quad node_2
node_2: 
 .quad 150
 .quad node_3
node_3: 
 .quad 120
 .quad node_4
node_4: 
 .quad 134
 .quad node_5
node_5: 
 .quad 120
 .quad node_6
node_6: 
 .quad 333
 .quad node_7
node_7: 
 .quad 342
 .quad node_8
node_8: 
 .quad 150
 .quad 0

