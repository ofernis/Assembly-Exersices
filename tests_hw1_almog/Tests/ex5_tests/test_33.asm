
.global _start

.section .text

# list before:
# [node_0:348]->[node_1:224]->[node_2:286]->[node_3:209]->[node_4:225]->[node_5:61]->[node_6:457]->[node_7:225]->[node_8:286]->[node_9:130]->[node_10:130]->[node_11:61]->[node_12:130]->[node_13:286]->[node_14:224]->[node_15:225]
# list after: (trying to swap 348 and 457)
# [node_6:457]->[node_1:224]->[node_2:286]->[node_3:209]->[node_4:225]->[node_5:61]->[node_0:348]->[node_7:225]->[node_8:286]->[node_9:130]->[node_10:130]->[node_11:61]->[node_12:130]->[node_13:286]->[node_14:224]->[node_15:225]

test_start:
    cmpq $node_6, (head)
    jne bad_exit
    
    cmpq $457, (node_6)
    jne bad_exit
    cmpq $node_1, (node_6+8)
    jne bad_exit

    cmpq $224, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $286, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $209, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $225, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $61, (node_5)
    jne bad_exit
    cmpq $node_0, (node_5+8)
    jne bad_exit

    cmpq $348, (node_0)
    jne bad_exit
    cmpq $node_7, (node_0+8)
    jne bad_exit

    cmpq $225, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $286, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $130, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $130, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $61, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $130, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $286, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $224, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $225, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
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
src: .quad 348
dst: .quad 457
node_0: 
 .quad 348
 .quad node_1
node_1: 
 .quad 224
 .quad node_2
node_2: 
 .quad 286
 .quad node_3
node_3: 
 .quad 209
 .quad node_4
node_4: 
 .quad 225
 .quad node_5
node_5: 
 .quad 61
 .quad node_6
node_6: 
 .quad 457
 .quad node_7
node_7: 
 .quad 225
 .quad node_8
node_8: 
 .quad 286
 .quad node_9
node_9: 
 .quad 130
 .quad node_10
node_10: 
 .quad 130
 .quad node_11
node_11: 
 .quad 61
 .quad node_12
node_12: 
 .quad 130
 .quad node_13
node_13: 
 .quad 286
 .quad node_14
node_14: 
 .quad 224
 .quad node_15
node_15: 
 .quad 225
 .quad 0

