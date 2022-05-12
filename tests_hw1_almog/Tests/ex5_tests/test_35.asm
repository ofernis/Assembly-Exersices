
.global _start

.section .text

# list before:
# [node_0:143]->[node_1:393]->[node_2:413]->[node_3:248]->[node_4:301]->[node_5:462]->[node_6:42]->[node_7:335]->[node_8:495]->[node_9:79]->[node_10:459]->[node_11:67]->[node_12:166]->[node_13:224]->[node_14:231]
# list after: (trying to swap 143 and 495)
# [node_8:495]->[node_1:393]->[node_2:413]->[node_3:248]->[node_4:301]->[node_5:462]->[node_6:42]->[node_7:335]->[node_0:143]->[node_9:79]->[node_10:459]->[node_11:67]->[node_12:166]->[node_13:224]->[node_14:231]

test_start:
    cmpq $node_8, (head)
    jne bad_exit
    
    cmpq $495, (node_8)
    jne bad_exit
    cmpq $node_1, (node_8+8)
    jne bad_exit

    cmpq $393, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $413, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $248, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $301, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $462, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $42, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $335, (node_7)
    jne bad_exit
    cmpq $node_0, (node_7+8)
    jne bad_exit

    cmpq $143, (node_0)
    jne bad_exit
    cmpq $node_9, (node_0+8)
    jne bad_exit

    cmpq $79, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $459, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $67, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $166, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $224, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $231, (node_14)
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
src: .quad 143
dst: .quad 495
node_0: 
 .quad 143
 .quad node_1
node_1: 
 .quad 393
 .quad node_2
node_2: 
 .quad 413
 .quad node_3
node_3: 
 .quad 248
 .quad node_4
node_4: 
 .quad 301
 .quad node_5
node_5: 
 .quad 462
 .quad node_6
node_6: 
 .quad 42
 .quad node_7
node_7: 
 .quad 335
 .quad node_8
node_8: 
 .quad 495
 .quad node_9
node_9: 
 .quad 79
 .quad node_10
node_10: 
 .quad 459
 .quad node_11
node_11: 
 .quad 67
 .quad node_12
node_12: 
 .quad 166
 .quad node_13
node_13: 
 .quad 224
 .quad node_14
node_14: 
 .quad 231
 .quad 0

