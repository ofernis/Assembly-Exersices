
.global _start

.section .text

# list before:
# [node_0:130]->[node_1:267]->[node_2:162]->[node_3:316]->[node_4:316]->[node_5:267]->[node_6:386]
# list after: (trying to swap 162 and 386)
# [node_0:130]->[node_1:267]->[node_6:386]->[node_3:316]->[node_4:316]->[node_5:267]->[node_2:162]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $130, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $267, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit

    cmpq $386, (node_6)
    jne bad_exit
    cmpq $node_3, (node_6+8)
    jne bad_exit

    cmpq $316, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $316, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $267, (node_5)
    jne bad_exit
    cmpq $node_2, (node_5+8)
    jne bad_exit

    cmpq $162, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
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
src: .quad 162
dst: .quad 386
node_0: 
 .quad 130
 .quad node_1
node_1: 
 .quad 267
 .quad node_2
node_2: 
 .quad 162
 .quad node_3
node_3: 
 .quad 316
 .quad node_4
node_4: 
 .quad 316
 .quad node_5
node_5: 
 .quad 267
 .quad node_6
node_6: 
 .quad 386
 .quad 0

