
.global _start

.section .text

# list before:
# [node_0:172]->[node_1:110]->[node_2:385]->[node_3:428]->[node_4:178]->[node_5:110]->[node_6:178]->[node_7:266]->[node_8:488]->[node_9:46]->[node_10:104]->[node_11:343]->[node_12:104]->[node_13:178]->[node_14:385]->[node_15:46]->[node_16:497]->[node_17:385]
# list after: (trying to swap 172 and 343)
# [node_11:343]->[node_1:110]->[node_2:385]->[node_3:428]->[node_4:178]->[node_5:110]->[node_6:178]->[node_7:266]->[node_8:488]->[node_9:46]->[node_10:104]->[node_0:172]->[node_12:104]->[node_13:178]->[node_14:385]->[node_15:46]->[node_16:497]->[node_17:385]

test_start:
    cmpq $node_11, (head)
    jne bad_exit
    
    cmpq $343, (node_11)
    jne bad_exit
    cmpq $node_1, (node_11+8)
    jne bad_exit

    cmpq $110, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $385, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $428, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $178, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $110, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $178, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $266, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $488, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $46, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $104, (node_10)
    jne bad_exit
    cmpq $node_0, (node_10+8)
    jne bad_exit

    cmpq $172, (node_0)
    jne bad_exit
    cmpq $node_12, (node_0+8)
    jne bad_exit

    cmpq $104, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $178, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $385, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $46, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $497, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $385, (node_17)
    jne bad_exit
    cmpq $0, (node_17+8)
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
src: .quad 172
dst: .quad 343
node_0: 
 .quad 172
 .quad node_1
node_1: 
 .quad 110
 .quad node_2
node_2: 
 .quad 385
 .quad node_3
node_3: 
 .quad 428
 .quad node_4
node_4: 
 .quad 178
 .quad node_5
node_5: 
 .quad 110
 .quad node_6
node_6: 
 .quad 178
 .quad node_7
node_7: 
 .quad 266
 .quad node_8
node_8: 
 .quad 488
 .quad node_9
node_9: 
 .quad 46
 .quad node_10
node_10: 
 .quad 104
 .quad node_11
node_11: 
 .quad 343
 .quad node_12
node_12: 
 .quad 104
 .quad node_13
node_13: 
 .quad 178
 .quad node_14
node_14: 
 .quad 385
 .quad node_15
node_15: 
 .quad 46
 .quad node_16
node_16: 
 .quad 497
 .quad node_17
node_17: 
 .quad 385
 .quad 0

