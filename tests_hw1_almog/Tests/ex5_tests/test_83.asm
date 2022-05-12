
.global _start

.section .text

# list before:
# [node_0:310]->[node_1:495]->[node_2:225]->[node_3:452]->[node_4:486]->[node_5:253]->[node_6:321]->[node_7:459]->[node_8:452]->[node_9:102]->[node_10:222]->[node_11:75]->[node_12:222]->[node_13:279]->[node_14:102]->[node_15:394]->[node_16:452]->[node_17:394]->[node_18:313]->[node_19:279]->[node_20:228]->[node_21:313]
# list after: (trying to swap 495 and 75)
# [node_0:310]->[node_11:75]->[node_2:225]->[node_3:452]->[node_4:486]->[node_5:253]->[node_6:321]->[node_7:459]->[node_8:452]->[node_9:102]->[node_10:222]->[node_1:495]->[node_12:222]->[node_13:279]->[node_14:102]->[node_15:394]->[node_16:452]->[node_17:394]->[node_18:313]->[node_19:279]->[node_20:228]->[node_21:313]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $310, (node_0)
    jne bad_exit
    cmpq $node_11, (node_0+8)
    jne bad_exit

    cmpq $75, (node_11)
    jne bad_exit
    cmpq $node_2, (node_11+8)
    jne bad_exit

    cmpq $225, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $452, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $486, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $253, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $321, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $459, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $452, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $102, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $222, (node_10)
    jne bad_exit
    cmpq $node_1, (node_10+8)
    jne bad_exit

    cmpq $495, (node_1)
    jne bad_exit
    cmpq $node_12, (node_1+8)
    jne bad_exit

    cmpq $222, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $279, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $102, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $394, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $452, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $394, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $313, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $279, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $228, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $313, (node_21)
    jne bad_exit
    cmpq $0, (node_21+8)
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
src: .quad 495
dst: .quad 75
node_0: 
 .quad 310
 .quad node_1
node_1: 
 .quad 495
 .quad node_2
node_2: 
 .quad 225
 .quad node_3
node_3: 
 .quad 452
 .quad node_4
node_4: 
 .quad 486
 .quad node_5
node_5: 
 .quad 253
 .quad node_6
node_6: 
 .quad 321
 .quad node_7
node_7: 
 .quad 459
 .quad node_8
node_8: 
 .quad 452
 .quad node_9
node_9: 
 .quad 102
 .quad node_10
node_10: 
 .quad 222
 .quad node_11
node_11: 
 .quad 75
 .quad node_12
node_12: 
 .quad 222
 .quad node_13
node_13: 
 .quad 279
 .quad node_14
node_14: 
 .quad 102
 .quad node_15
node_15: 
 .quad 394
 .quad node_16
node_16: 
 .quad 452
 .quad node_17
node_17: 
 .quad 394
 .quad node_18
node_18: 
 .quad 313
 .quad node_19
node_19: 
 .quad 279
 .quad node_20
node_20: 
 .quad 228
 .quad node_21
node_21: 
 .quad 313
 .quad 0

