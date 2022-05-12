
.global _start

.section .text

# list before:
# [node_0:234]->[node_1:77]->[node_2:234]->[node_3:376]->[node_4:33]->[node_5:234]->[node_6:303]->[node_7:448]->[node_8:428]->[node_9:243]->[node_10:249]
# list after: (trying to swap 376 and 249)
# [node_0:234]->[node_1:77]->[node_2:234]->[node_10:249]->[node_4:33]->[node_5:234]->[node_6:303]->[node_7:448]->[node_8:428]->[node_9:243]->[node_3:376]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $234, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $77, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $234, (node_2)
    jne bad_exit
    cmpq $node_10, (node_2+8)
    jne bad_exit

    cmpq $249, (node_10)
    jne bad_exit
    cmpq $node_4, (node_10+8)
    jne bad_exit

    cmpq $33, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $234, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $303, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $448, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $428, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $243, (node_9)
    jne bad_exit
    cmpq $node_3, (node_9+8)
    jne bad_exit

    cmpq $376, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
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
src: .quad 376
dst: .quad 249
node_0: 
 .quad 234
 .quad node_1
node_1: 
 .quad 77
 .quad node_2
node_2: 
 .quad 234
 .quad node_3
node_3: 
 .quad 376
 .quad node_4
node_4: 
 .quad 33
 .quad node_5
node_5: 
 .quad 234
 .quad node_6
node_6: 
 .quad 303
 .quad node_7
node_7: 
 .quad 448
 .quad node_8
node_8: 
 .quad 428
 .quad node_9
node_9: 
 .quad 243
 .quad node_10
node_10: 
 .quad 249
 .quad 0

