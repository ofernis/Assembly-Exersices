
.global _start

.section .text

# list before:
# [node_0:87]->[node_1:123]->[node_2:438]->[node_3:179]->[node_4:340]->[node_5:438]->[node_6:42]->[node_7:241]
# list after: (trying to swap 340 and 241)
# [node_0:87]->[node_1:123]->[node_2:438]->[node_3:179]->[node_7:241]->[node_5:438]->[node_6:42]->[node_4:340]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $87, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $123, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $438, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $179, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit

    cmpq $241, (node_7)
    jne bad_exit
    cmpq $node_5, (node_7+8)
    jne bad_exit

    cmpq $438, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $42, (node_6)
    jne bad_exit
    cmpq $node_4, (node_6+8)
    jne bad_exit

    cmpq $340, (node_4)
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
src: .quad 340
dst: .quad 241
node_0: 
 .quad 87
 .quad node_1
node_1: 
 .quad 123
 .quad node_2
node_2: 
 .quad 438
 .quad node_3
node_3: 
 .quad 179
 .quad node_4
node_4: 
 .quad 340
 .quad node_5
node_5: 
 .quad 438
 .quad node_6
node_6: 
 .quad 42
 .quad node_7
node_7: 
 .quad 241
 .quad 0

