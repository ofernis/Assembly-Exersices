
.global _start

.section .text

# list before:
# [node_0:275]->[node_1:5]->[node_2:65]->[node_3:80]->[node_4:125]->[node_5:383]->[node_6:5]->[node_7:136]->[node_8:188]->[node_9:463]->[node_10:326]->[node_11:424]->[node_12:180]
# list after: (trying to swap 275 and 125)
# [node_4:125]->[node_1:5]->[node_2:65]->[node_3:80]->[node_0:275]->[node_5:383]->[node_6:5]->[node_7:136]->[node_8:188]->[node_9:463]->[node_10:326]->[node_11:424]->[node_12:180]

test_start:
    cmpq $node_4, (head)
    jne bad_exit
    
    cmpq $125, (node_4)
    jne bad_exit
    cmpq $node_1, (node_4+8)
    jne bad_exit

    cmpq $5, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $65, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $80, (node_3)
    jne bad_exit
    cmpq $node_0, (node_3+8)
    jne bad_exit

    cmpq $275, (node_0)
    jne bad_exit
    cmpq $node_5, (node_0+8)
    jne bad_exit

    cmpq $383, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $5, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $136, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $188, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $463, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $326, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $424, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $180, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
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
dst: .quad 125
node_0: 
 .quad 275
 .quad node_1
node_1: 
 .quad 5
 .quad node_2
node_2: 
 .quad 65
 .quad node_3
node_3: 
 .quad 80
 .quad node_4
node_4: 
 .quad 125
 .quad node_5
node_5: 
 .quad 383
 .quad node_6
node_6: 
 .quad 5
 .quad node_7
node_7: 
 .quad 136
 .quad node_8
node_8: 
 .quad 188
 .quad node_9
node_9: 
 .quad 463
 .quad node_10
node_10: 
 .quad 326
 .quad node_11
node_11: 
 .quad 424
 .quad node_12
node_12: 
 .quad 180
 .quad 0

