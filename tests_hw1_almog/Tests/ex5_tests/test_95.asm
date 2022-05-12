
.global _start

.section .text

# list before:
# [node_0:497]->[node_1:254]->[node_2:116]->[node_3:274]->[node_4:76]->[node_5:312]->[node_6:66]->[node_7:399]->[node_8:104]->[node_9:391]->[node_10:323]->[node_11:274]->[node_12:207]->[node_13:66]->[node_14:391]->[node_15:114]->[node_16:207]->[node_17:116]->[node_18:274]->[node_19:245]->[node_20:497]->[node_21:76]->[node_22:399]->[node_23:278]->[node_24:497]
# list after: (trying to swap 312 and 104)
# [node_0:497]->[node_1:254]->[node_2:116]->[node_3:274]->[node_4:76]->[node_8:104]->[node_6:66]->[node_7:399]->[node_5:312]->[node_9:391]->[node_10:323]->[node_11:274]->[node_12:207]->[node_13:66]->[node_14:391]->[node_15:114]->[node_16:207]->[node_17:116]->[node_18:274]->[node_19:245]->[node_20:497]->[node_21:76]->[node_22:399]->[node_23:278]->[node_24:497]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $497, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $254, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $116, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $274, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $76, (node_4)
    jne bad_exit
    cmpq $node_8, (node_4+8)
    jne bad_exit

    cmpq $104, (node_8)
    jne bad_exit
    cmpq $node_6, (node_8+8)
    jne bad_exit

    cmpq $66, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $399, (node_7)
    jne bad_exit
    cmpq $node_5, (node_7+8)
    jne bad_exit

    cmpq $312, (node_5)
    jne bad_exit
    cmpq $node_9, (node_5+8)
    jne bad_exit

    cmpq $391, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $323, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $274, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $207, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $66, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $391, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $114, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $207, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $116, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $274, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $245, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $497, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $76, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $399, (node_22)
    jne bad_exit
    cmpq $node_23, (node_22+8)
    jne bad_exit

    cmpq $278, (node_23)
    jne bad_exit
    cmpq $node_24, (node_23+8)
    jne bad_exit

    cmpq $497, (node_24)
    jne bad_exit
    cmpq $0, (node_24+8)
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
src: .quad 312
dst: .quad 104
node_0: 
 .quad 497
 .quad node_1
node_1: 
 .quad 254
 .quad node_2
node_2: 
 .quad 116
 .quad node_3
node_3: 
 .quad 274
 .quad node_4
node_4: 
 .quad 76
 .quad node_5
node_5: 
 .quad 312
 .quad node_6
node_6: 
 .quad 66
 .quad node_7
node_7: 
 .quad 399
 .quad node_8
node_8: 
 .quad 104
 .quad node_9
node_9: 
 .quad 391
 .quad node_10
node_10: 
 .quad 323
 .quad node_11
node_11: 
 .quad 274
 .quad node_12
node_12: 
 .quad 207
 .quad node_13
node_13: 
 .quad 66
 .quad node_14
node_14: 
 .quad 391
 .quad node_15
node_15: 
 .quad 114
 .quad node_16
node_16: 
 .quad 207
 .quad node_17
node_17: 
 .quad 116
 .quad node_18
node_18: 
 .quad 274
 .quad node_19
node_19: 
 .quad 245
 .quad node_20
node_20: 
 .quad 497
 .quad node_21
node_21: 
 .quad 76
 .quad node_22
node_22: 
 .quad 399
 .quad node_23
node_23: 
 .quad 278
 .quad node_24
node_24: 
 .quad 497
 .quad 0

