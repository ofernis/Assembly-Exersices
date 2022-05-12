
.global _start

.section .text

# list before:
# [node_0:36]->[node_1:100]->[node_2:425]->[node_3:60]->[node_4:36]->[node_5:174]->[node_6:100]->[node_7:100]->[node_8:1]
# list after: (trying to swap 60 and 425)
# [node_0:36]->[node_1:100]->[node_3:60]->[node_2:425]->[node_4:36]->[node_5:174]->[node_6:100]->[node_7:100]->[node_8:1]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $36, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $100, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit

    cmpq $60, (node_3)
    jne bad_exit
    cmpq $node_2, (node_3+8)
    jne bad_exit

    cmpq $425, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit

    cmpq $36, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $174, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $100, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $100, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $1, (node_8)
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
src: .quad 60
dst: .quad 425
node_0: 
 .quad 36
 .quad node_1
node_1: 
 .quad 100
 .quad node_2
node_2: 
 .quad 425
 .quad node_3
node_3: 
 .quad 60
 .quad node_4
node_4: 
 .quad 36
 .quad node_5
node_5: 
 .quad 174
 .quad node_6
node_6: 
 .quad 100
 .quad node_7
node_7: 
 .quad 100
 .quad node_8
node_8: 
 .quad 1
 .quad 0

