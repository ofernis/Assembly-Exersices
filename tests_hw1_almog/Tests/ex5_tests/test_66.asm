
.global _start

.section .text

# list before:
# [node_0:308]->[node_1:96]->[node_2:136]->[node_3:424]->[node_4:424]->[node_5:1]->[node_6:172]->[node_7:468]->[node_8:308]->[node_9:36]->[node_10:36]->[node_11:130]->[node_12:96]->[node_13:308]
# list after: (trying to swap 172 and 468)
# [node_0:308]->[node_1:96]->[node_2:136]->[node_3:424]->[node_4:424]->[node_5:1]->[node_7:468]->[node_6:172]->[node_8:308]->[node_9:36]->[node_10:36]->[node_11:130]->[node_12:96]->[node_13:308]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $308, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $96, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $136, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $424, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $424, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $1, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit

    cmpq $468, (node_7)
    jne bad_exit
    cmpq $node_6, (node_7+8)
    jne bad_exit

    cmpq $172, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit

    cmpq $308, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $36, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $36, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $130, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $96, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $308, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
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
src: .quad 172
dst: .quad 468
node_0: 
 .quad 308
 .quad node_1
node_1: 
 .quad 96
 .quad node_2
node_2: 
 .quad 136
 .quad node_3
node_3: 
 .quad 424
 .quad node_4
node_4: 
 .quad 424
 .quad node_5
node_5: 
 .quad 1
 .quad node_6
node_6: 
 .quad 172
 .quad node_7
node_7: 
 .quad 468
 .quad node_8
node_8: 
 .quad 308
 .quad node_9
node_9: 
 .quad 36
 .quad node_10
node_10: 
 .quad 36
 .quad node_11
node_11: 
 .quad 130
 .quad node_12
node_12: 
 .quad 96
 .quad node_13
node_13: 
 .quad 308
 .quad 0

