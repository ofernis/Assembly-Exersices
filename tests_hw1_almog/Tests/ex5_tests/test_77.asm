
.global _start

.section .text

# list before:
# [node_0:329]->[node_1:348]->[node_2:280]->[node_3:113]->[node_4:205]->[node_5:256]->[node_6:304]->[node_7:444]->[node_8:40]->[node_9:299]->[node_10:298]->[node_11:3]->[node_12:421]->[node_13:420]->[node_14:236]
# list after: (trying to swap 280 and 40)
# [node_0:329]->[node_1:348]->[node_8:40]->[node_3:113]->[node_4:205]->[node_5:256]->[node_6:304]->[node_7:444]->[node_2:280]->[node_9:299]->[node_10:298]->[node_11:3]->[node_12:421]->[node_13:420]->[node_14:236]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $329, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $348, (node_1)
    jne bad_exit
    cmpq $node_8, (node_1+8)
    jne bad_exit

    cmpq $40, (node_8)
    jne bad_exit
    cmpq $node_3, (node_8+8)
    jne bad_exit

    cmpq $113, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $205, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $256, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $304, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $444, (node_7)
    jne bad_exit
    cmpq $node_2, (node_7+8)
    jne bad_exit

    cmpq $280, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit

    cmpq $299, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $298, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $3, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $421, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $420, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $236, (node_14)
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
src: .quad 280
dst: .quad 40
node_0: 
 .quad 329
 .quad node_1
node_1: 
 .quad 348
 .quad node_2
node_2: 
 .quad 280
 .quad node_3
node_3: 
 .quad 113
 .quad node_4
node_4: 
 .quad 205
 .quad node_5
node_5: 
 .quad 256
 .quad node_6
node_6: 
 .quad 304
 .quad node_7
node_7: 
 .quad 444
 .quad node_8
node_8: 
 .quad 40
 .quad node_9
node_9: 
 .quad 299
 .quad node_10
node_10: 
 .quad 298
 .quad node_11
node_11: 
 .quad 3
 .quad node_12
node_12: 
 .quad 421
 .quad node_13
node_13: 
 .quad 420
 .quad node_14
node_14: 
 .quad 236
 .quad 0

