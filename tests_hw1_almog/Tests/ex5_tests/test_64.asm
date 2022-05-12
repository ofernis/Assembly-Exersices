
.global _start

.section .text

# list before:
# [node_0:194]->[node_1:357]->[node_2:390]->[node_3:386]->[node_4:481]->[node_5:266]->[node_6:357]
# list after: (trying to swap 386 and 266)
# [node_0:194]->[node_1:357]->[node_2:390]->[node_5:266]->[node_4:481]->[node_3:386]->[node_6:357]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $194, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $357, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $390, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit

    cmpq $266, (node_5)
    jne bad_exit
    cmpq $node_4, (node_5+8)
    jne bad_exit

    cmpq $481, (node_4)
    jne bad_exit
    cmpq $node_3, (node_4+8)
    jne bad_exit

    cmpq $386, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit

    cmpq $357, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
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
src: .quad 386
dst: .quad 266
node_0: 
 .quad 194
 .quad node_1
node_1: 
 .quad 357
 .quad node_2
node_2: 
 .quad 390
 .quad node_3
node_3: 
 .quad 386
 .quad node_4
node_4: 
 .quad 481
 .quad node_5
node_5: 
 .quad 266
 .quad node_6
node_6: 
 .quad 357
 .quad 0

