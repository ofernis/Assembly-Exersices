
.global _start

.section .text

# list before:
# [node_0:8]->[node_1:46]->[node_2:8]->[node_3:412]->[node_4:8]->[node_5:275]->[node_6:384]->[node_7:8]->[node_8:439]->[node_9:8]->[node_10:208]->[node_11:156]
# list after: (trying to swap 275 and 8)
# [node_0:8]->[node_1:46]->[node_2:8]->[node_3:412]->[node_4:8]->[node_5:275]->[node_6:384]->[node_7:8]->[node_8:439]->[node_9:8]->[node_10:208]->[node_11:156]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $8, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $46, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $8, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $412, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $8, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $275, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $384, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $8, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $439, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $8, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $208, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $156, (node_11)
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
src: .quad 275
dst: .quad 8
node_0: 
 .quad 8
 .quad node_1
node_1: 
 .quad 46
 .quad node_2
node_2: 
 .quad 8
 .quad node_3
node_3: 
 .quad 412
 .quad node_4
node_4: 
 .quad 8
 .quad node_5
node_5: 
 .quad 275
 .quad node_6
node_6: 
 .quad 384
 .quad node_7
node_7: 
 .quad 8
 .quad node_8
node_8: 
 .quad 439
 .quad node_9
node_9: 
 .quad 8
 .quad node_10
node_10: 
 .quad 208
 .quad node_11
node_11: 
 .quad 156
 .quad 0

