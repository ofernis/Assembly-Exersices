
.global _start

.section .text

# list before:
# [node_0:103]->[node_1:58]->[node_2:207]->[node_3:67]->[node_4:359]->[node_5:192]->[node_6:192]->[node_7:207]->[node_8:267]->[node_9:450]->[node_10:169]->[node_11:207]->[node_12:58]->[node_13:158]->[node_14:149]
# list after: (trying to swap 67 and 267)
# [node_0:103]->[node_1:58]->[node_2:207]->[node_8:267]->[node_4:359]->[node_5:192]->[node_6:192]->[node_7:207]->[node_3:67]->[node_9:450]->[node_10:169]->[node_11:207]->[node_12:58]->[node_13:158]->[node_14:149]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $103, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $58, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $207, (node_2)
    jne bad_exit
    cmpq $node_8, (node_2+8)
    jne bad_exit

    cmpq $267, (node_8)
    jne bad_exit
    cmpq $node_4, (node_8+8)
    jne bad_exit

    cmpq $359, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $192, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $192, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $207, (node_7)
    jne bad_exit
    cmpq $node_3, (node_7+8)
    jne bad_exit

    cmpq $67, (node_3)
    jne bad_exit
    cmpq $node_9, (node_3+8)
    jne bad_exit

    cmpq $450, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $169, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $207, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $58, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $158, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $149, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
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
src: .quad 67
dst: .quad 267
node_0: 
 .quad 103
 .quad node_1
node_1: 
 .quad 58
 .quad node_2
node_2: 
 .quad 207
 .quad node_3
node_3: 
 .quad 67
 .quad node_4
node_4: 
 .quad 359
 .quad node_5
node_5: 
 .quad 192
 .quad node_6
node_6: 
 .quad 192
 .quad node_7
node_7: 
 .quad 207
 .quad node_8
node_8: 
 .quad 267
 .quad node_9
node_9: 
 .quad 450
 .quad node_10
node_10: 
 .quad 169
 .quad node_11
node_11: 
 .quad 207
 .quad node_12
node_12: 
 .quad 58
 .quad node_13
node_13: 
 .quad 158
 .quad node_14
node_14: 
 .quad 149
 .quad 0

