
.global _start

.section .text

# list before:
# [node_0:56]->[node_1:83]->[node_2:83]->[node_3:369]->[node_4:11]->[node_5:245]->[node_6:371]->[node_7:120]->[node_8:476]->[node_9:369]->[node_10:61]->[node_11:476]->[node_12:239]->[node_13:371]->[node_14:337]->[node_15:476]->[node_16:369]->[node_17:377]->[node_18:369]->[node_19:377]->[node_20:377]->[node_21:371]->[node_22:377]
# list after: (trying to swap 11 and 61)
# [node_0:56]->[node_1:83]->[node_2:83]->[node_3:369]->[node_10:61]->[node_5:245]->[node_6:371]->[node_7:120]->[node_8:476]->[node_9:369]->[node_4:11]->[node_11:476]->[node_12:239]->[node_13:371]->[node_14:337]->[node_15:476]->[node_16:369]->[node_17:377]->[node_18:369]->[node_19:377]->[node_20:377]->[node_21:371]->[node_22:377]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $56, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $83, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $83, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $369, (node_3)
    jne bad_exit
    cmpq $node_10, (node_3+8)
    jne bad_exit

    cmpq $61, (node_10)
    jne bad_exit
    cmpq $node_5, (node_10+8)
    jne bad_exit

    cmpq $245, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $371, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $120, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $476, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $369, (node_9)
    jne bad_exit
    cmpq $node_4, (node_9+8)
    jne bad_exit

    cmpq $11, (node_4)
    jne bad_exit
    cmpq $node_11, (node_4+8)
    jne bad_exit

    cmpq $476, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $239, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $371, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $337, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $476, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $369, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $377, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $369, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $377, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $377, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $371, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $377, (node_22)
    jne bad_exit
    cmpq $0, (node_22+8)
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
src: .quad 11
dst: .quad 61
node_0: 
 .quad 56
 .quad node_1
node_1: 
 .quad 83
 .quad node_2
node_2: 
 .quad 83
 .quad node_3
node_3: 
 .quad 369
 .quad node_4
node_4: 
 .quad 11
 .quad node_5
node_5: 
 .quad 245
 .quad node_6
node_6: 
 .quad 371
 .quad node_7
node_7: 
 .quad 120
 .quad node_8
node_8: 
 .quad 476
 .quad node_9
node_9: 
 .quad 369
 .quad node_10
node_10: 
 .quad 61
 .quad node_11
node_11: 
 .quad 476
 .quad node_12
node_12: 
 .quad 239
 .quad node_13
node_13: 
 .quad 371
 .quad node_14
node_14: 
 .quad 337
 .quad node_15
node_15: 
 .quad 476
 .quad node_16
node_16: 
 .quad 369
 .quad node_17
node_17: 
 .quad 377
 .quad node_18
node_18: 
 .quad 369
 .quad node_19
node_19: 
 .quad 377
 .quad node_20
node_20: 
 .quad 377
 .quad node_21
node_21: 
 .quad 371
 .quad node_22
node_22: 
 .quad 377
 .quad 0

