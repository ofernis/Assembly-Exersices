
.global _start

.section .text

# list before:
# [node_0:185]->[node_1:229]->[node_2:137]->[node_3:23]->[node_4:185]->[node_5:75]->[node_6:120]->[node_7:405]->[node_8:137]->[node_9:323]->[node_10:323]->[node_11:105]->[node_12:367]->[node_13:133]->[node_14:120]->[node_15:120]->[node_16:75]->[node_17:75]->[node_18:185]->[node_19:229]->[node_20:133]->[node_21:85]->[node_22:23]
# list after: (trying to swap 367 and 85)
# [node_0:185]->[node_1:229]->[node_2:137]->[node_3:23]->[node_4:185]->[node_5:75]->[node_6:120]->[node_7:405]->[node_8:137]->[node_9:323]->[node_10:323]->[node_11:105]->[node_21:85]->[node_13:133]->[node_14:120]->[node_15:120]->[node_16:75]->[node_17:75]->[node_18:185]->[node_19:229]->[node_20:133]->[node_12:367]->[node_22:23]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $185, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $229, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $137, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $23, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $185, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $75, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $120, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $405, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $137, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $323, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $323, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $105, (node_11)
    jne bad_exit
    cmpq $node_21, (node_11+8)
    jne bad_exit

    cmpq $85, (node_21)
    jne bad_exit
    cmpq $node_13, (node_21+8)
    jne bad_exit

    cmpq $133, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $120, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $120, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $75, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $75, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $185, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $229, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $133, (node_20)
    jne bad_exit
    cmpq $node_12, (node_20+8)
    jne bad_exit

    cmpq $367, (node_12)
    jne bad_exit
    cmpq $node_22, (node_12+8)
    jne bad_exit

    cmpq $23, (node_22)
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
src: .quad 367
dst: .quad 85
node_0: 
 .quad 185
 .quad node_1
node_1: 
 .quad 229
 .quad node_2
node_2: 
 .quad 137
 .quad node_3
node_3: 
 .quad 23
 .quad node_4
node_4: 
 .quad 185
 .quad node_5
node_5: 
 .quad 75
 .quad node_6
node_6: 
 .quad 120
 .quad node_7
node_7: 
 .quad 405
 .quad node_8
node_8: 
 .quad 137
 .quad node_9
node_9: 
 .quad 323
 .quad node_10
node_10: 
 .quad 323
 .quad node_11
node_11: 
 .quad 105
 .quad node_12
node_12: 
 .quad 367
 .quad node_13
node_13: 
 .quad 133
 .quad node_14
node_14: 
 .quad 120
 .quad node_15
node_15: 
 .quad 120
 .quad node_16
node_16: 
 .quad 75
 .quad node_17
node_17: 
 .quad 75
 .quad node_18
node_18: 
 .quad 185
 .quad node_19
node_19: 
 .quad 229
 .quad node_20
node_20: 
 .quad 133
 .quad node_21
node_21: 
 .quad 85
 .quad node_22
node_22: 
 .quad 23
 .quad 0

