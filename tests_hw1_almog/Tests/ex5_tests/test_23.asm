
.global _start

.section .text

# list before:
# [node_0:273]->[node_1:28]->[node_2:254]->[node_3:273]->[node_4:481]->[node_5:436]->[node_6:8]->[node_7:254]->[node_8:8]->[node_9:273]->[node_10:128]->[node_11:113]->[node_12:113]->[node_13:273]->[node_14:28]
# list after: (trying to swap 273 and 128)
# [node_0:273]->[node_1:28]->[node_2:254]->[node_3:273]->[node_4:481]->[node_5:436]->[node_6:8]->[node_7:254]->[node_8:8]->[node_9:273]->[node_10:128]->[node_11:113]->[node_12:113]->[node_13:273]->[node_14:28]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $273, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $28, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $254, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $273, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $481, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $436, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $8, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $254, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $8, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $273, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $128, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $113, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $113, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $273, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $28, (node_14)
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
src: .quad 273
dst: .quad 128
node_0: 
 .quad 273
 .quad node_1
node_1: 
 .quad 28
 .quad node_2
node_2: 
 .quad 254
 .quad node_3
node_3: 
 .quad 273
 .quad node_4
node_4: 
 .quad 481
 .quad node_5
node_5: 
 .quad 436
 .quad node_6
node_6: 
 .quad 8
 .quad node_7
node_7: 
 .quad 254
 .quad node_8
node_8: 
 .quad 8
 .quad node_9
node_9: 
 .quad 273
 .quad node_10
node_10: 
 .quad 128
 .quad node_11
node_11: 
 .quad 113
 .quad node_12
node_12: 
 .quad 113
 .quad node_13
node_13: 
 .quad 273
 .quad node_14
node_14: 
 .quad 28
 .quad 0

