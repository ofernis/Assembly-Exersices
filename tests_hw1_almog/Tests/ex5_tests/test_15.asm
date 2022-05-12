
.global _start

.section .text

# list before:
# [node_0:213]->[node_1:111]->[node_2:429]->[node_3:171]->[node_4:445]
# list after: (trying to swap 171 and 171)
# [node_0:213]->[node_1:111]->[node_2:429]->[node_3:171]->[node_4:445]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $213, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $111, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $429, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $171, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $445, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
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
src: .quad 171
dst: .quad 171
node_0: 
 .quad 213
 .quad node_1
node_1: 
 .quad 111
 .quad node_2
node_2: 
 .quad 429
 .quad node_3
node_3: 
 .quad 171
 .quad node_4
node_4: 
 .quad 445
 .quad 0

