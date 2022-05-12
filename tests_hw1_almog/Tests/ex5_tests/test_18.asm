
.global _start

.section .text

# list before:
# [node_0:256]->[node_1:403]->[node_2:425]->[node_3:425]->[node_4:315]->[node_5:171]->[node_6:171]->[node_7:403]->[node_8:315]->[node_9:366]->[node_10:403]->[node_11:497]
# list after: (trying to swap 256 and 256)
# [node_0:256]->[node_1:403]->[node_2:425]->[node_3:425]->[node_4:315]->[node_5:171]->[node_6:171]->[node_7:403]->[node_8:315]->[node_9:366]->[node_10:403]->[node_11:497]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $256, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $403, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $425, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $425, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $315, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $171, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $171, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $403, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $315, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $366, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $403, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $497, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
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
src: .quad 256
dst: .quad 256
node_0: 
 .quad 256
 .quad node_1
node_1: 
 .quad 403
 .quad node_2
node_2: 
 .quad 425
 .quad node_3
node_3: 
 .quad 425
 .quad node_4
node_4: 
 .quad 315
 .quad node_5
node_5: 
 .quad 171
 .quad node_6
node_6: 
 .quad 171
 .quad node_7
node_7: 
 .quad 403
 .quad node_8
node_8: 
 .quad 315
 .quad node_9
node_9: 
 .quad 366
 .quad node_10
node_10: 
 .quad 403
 .quad node_11
node_11: 
 .quad 497
 .quad 0

