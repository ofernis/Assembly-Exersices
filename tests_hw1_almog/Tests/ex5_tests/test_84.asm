
.global _start

.section .text

# list before:
# [node_0:464]->[node_1:497]->[node_2:68]->[node_3:137]->[node_4:19]->[node_5:69]->[node_6:18]->[node_7:212]
# list after: (trying to swap 464 and 69)
# [node_5:69]->[node_1:497]->[node_2:68]->[node_3:137]->[node_4:19]->[node_0:464]->[node_6:18]->[node_7:212]

test_start:
    cmpq $node_5, (head)
    jne bad_exit
    
    cmpq $69, (node_5)
    jne bad_exit
    cmpq $node_1, (node_5+8)
    jne bad_exit

    cmpq $497, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $68, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $137, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $19, (node_4)
    jne bad_exit
    cmpq $node_0, (node_4+8)
    jne bad_exit

    cmpq $464, (node_0)
    jne bad_exit
    cmpq $node_6, (node_0+8)
    jne bad_exit

    cmpq $18, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $212, (node_7)
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
src: .quad 464
dst: .quad 69
node_0: 
 .quad 464
 .quad node_1
node_1: 
 .quad 497
 .quad node_2
node_2: 
 .quad 68
 .quad node_3
node_3: 
 .quad 137
 .quad node_4
node_4: 
 .quad 19
 .quad node_5
node_5: 
 .quad 69
 .quad node_6
node_6: 
 .quad 18
 .quad node_7
node_7: 
 .quad 212
 .quad 0

