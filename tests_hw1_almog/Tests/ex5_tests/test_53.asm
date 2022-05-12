
.global _start

.section .text

# list before:
# [node_0:64]->[node_1:90]->[node_2:62]->[node_3:416]->[node_4:377]->[node_5:445]->[node_6:237]->[node_7:268]->[node_8:433]
# list after: (trying to swap 64 and 62)
# [node_2:62]->[node_1:90]->[node_0:64]->[node_3:416]->[node_4:377]->[node_5:445]->[node_6:237]->[node_7:268]->[node_8:433]

test_start:
    cmpq $node_2, (head)
    jne bad_exit
    
    cmpq $62, (node_2)
    jne bad_exit
    cmpq $node_1, (node_2+8)
    jne bad_exit

    cmpq $90, (node_1)
    jne bad_exit
    cmpq $node_0, (node_1+8)
    jne bad_exit

    cmpq $64, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit

    cmpq $416, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $377, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $445, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $237, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $268, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $433, (node_8)
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
src: .quad 64
dst: .quad 62
node_0: 
 .quad 64
 .quad node_1
node_1: 
 .quad 90
 .quad node_2
node_2: 
 .quad 62
 .quad node_3
node_3: 
 .quad 416
 .quad node_4
node_4: 
 .quad 377
 .quad node_5
node_5: 
 .quad 445
 .quad node_6
node_6: 
 .quad 237
 .quad node_7
node_7: 
 .quad 268
 .quad node_8
node_8: 
 .quad 433
 .quad 0

