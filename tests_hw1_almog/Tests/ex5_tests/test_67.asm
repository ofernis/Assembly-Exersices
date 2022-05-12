
.global _start

.section .text

# list before:
# [node_0:430]->[node_1:347]->[node_2:490]->[node_3:80]->[node_4:450]->[node_5:22]->[node_6:221]->[node_7:41]->[node_8:80]->[node_9:305]->[node_10:57]->[node_11:262]->[node_12:80]->[node_13:281]->[node_14:476]
# list after: (trying to swap 430 and 347)
# [node_1:347]->[node_0:430]->[node_2:490]->[node_3:80]->[node_4:450]->[node_5:22]->[node_6:221]->[node_7:41]->[node_8:80]->[node_9:305]->[node_10:57]->[node_11:262]->[node_12:80]->[node_13:281]->[node_14:476]

test_start:
    cmpq $node_1, (head)
    jne bad_exit
    
    cmpq $347, (node_1)
    jne bad_exit
    cmpq $node_0, (node_1+8)
    jne bad_exit

    cmpq $430, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit

    cmpq $490, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $80, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $450, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $22, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $221, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $41, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $80, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $305, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $57, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $262, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $80, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $281, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $476, (node_14)
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
src: .quad 430
dst: .quad 347
node_0: 
 .quad 430
 .quad node_1
node_1: 
 .quad 347
 .quad node_2
node_2: 
 .quad 490
 .quad node_3
node_3: 
 .quad 80
 .quad node_4
node_4: 
 .quad 450
 .quad node_5
node_5: 
 .quad 22
 .quad node_6
node_6: 
 .quad 221
 .quad node_7
node_7: 
 .quad 41
 .quad node_8
node_8: 
 .quad 80
 .quad node_9
node_9: 
 .quad 305
 .quad node_10
node_10: 
 .quad 57
 .quad node_11
node_11: 
 .quad 262
 .quad node_12
node_12: 
 .quad 80
 .quad node_13
node_13: 
 .quad 281
 .quad node_14
node_14: 
 .quad 476
 .quad 0

