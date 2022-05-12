
.global _start

.section .text

# list before:
# [node_0:26]->[node_1:26]->[node_2:454]->[node_3:234]->[node_4:200]->[node_5:437]->[node_6:234]->[node_7:410]
# list after: (trying to swap 454 and 200)
# [node_0:26]->[node_1:26]->[node_4:200]->[node_3:234]->[node_2:454]->[node_5:437]->[node_6:234]->[node_7:410]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $26, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $26, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit

    cmpq $200, (node_4)
    jne bad_exit
    cmpq $node_3, (node_4+8)
    jne bad_exit

    cmpq $234, (node_3)
    jne bad_exit
    cmpq $node_2, (node_3+8)
    jne bad_exit

    cmpq $454, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit

    cmpq $437, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $234, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $410, (node_7)
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
src: .quad 454
dst: .quad 200
node_0: 
 .quad 26
 .quad node_1
node_1: 
 .quad 26
 .quad node_2
node_2: 
 .quad 454
 .quad node_3
node_3: 
 .quad 234
 .quad node_4
node_4: 
 .quad 200
 .quad node_5
node_5: 
 .quad 437
 .quad node_6
node_6: 
 .quad 234
 .quad node_7
node_7: 
 .quad 410
 .quad 0

