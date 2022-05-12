
.global _start

.section .text

# list before:
# [node_0:313]->[node_1:255]->[node_2:142]->[node_3:313]->[node_4:7]->[node_5:255]->[node_6:255]->[node_7:66]->[node_8:255]
# list after: (trying to swap 66 and 66)
# [node_0:313]->[node_1:255]->[node_2:142]->[node_3:313]->[node_4:7]->[node_5:255]->[node_6:255]->[node_7:66]->[node_8:255]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $313, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $255, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $142, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $313, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $7, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $255, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $255, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $66, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $255, (node_8)
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
src: .quad 66
dst: .quad 66
node_0: 
 .quad 313
 .quad node_1
node_1: 
 .quad 255
 .quad node_2
node_2: 
 .quad 142
 .quad node_3
node_3: 
 .quad 313
 .quad node_4
node_4: 
 .quad 7
 .quad node_5
node_5: 
 .quad 255
 .quad node_6
node_6: 
 .quad 255
 .quad node_7
node_7: 
 .quad 66
 .quad node_8
node_8: 
 .quad 255
 .quad 0

