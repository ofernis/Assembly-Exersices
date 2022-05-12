
.global _start

.section .text

# list before:
# [node_0:442]->[node_1:198]->[node_2:292]->[node_3:286]->[node_4:378]->[node_5:69]->[node_6:378]->[node_7:141]->[node_8:292]->[node_9:442]->[node_10:15]->[node_11:198]->[node_12:183]->[node_13:15]->[node_14:15]->[node_15:378]->[node_16:360]->[node_17:69]->[node_18:115]->[node_19:69]
# list after: (trying to swap 115 and 286)
# [node_0:442]->[node_1:198]->[node_2:292]->[node_18:115]->[node_4:378]->[node_5:69]->[node_6:378]->[node_7:141]->[node_8:292]->[node_9:442]->[node_10:15]->[node_11:198]->[node_12:183]->[node_13:15]->[node_14:15]->[node_15:378]->[node_16:360]->[node_17:69]->[node_3:286]->[node_19:69]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $442, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $198, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $292, (node_2)
    jne bad_exit
    cmpq $node_18, (node_2+8)
    jne bad_exit

    cmpq $115, (node_18)
    jne bad_exit
    cmpq $node_4, (node_18+8)
    jne bad_exit

    cmpq $378, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $69, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $378, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $141, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $292, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $442, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $15, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $198, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $183, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $15, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $15, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $378, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $360, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $69, (node_17)
    jne bad_exit
    cmpq $node_3, (node_17+8)
    jne bad_exit

    cmpq $286, (node_3)
    jne bad_exit
    cmpq $node_19, (node_3+8)
    jne bad_exit

    cmpq $69, (node_19)
    jne bad_exit
    cmpq $0, (node_19+8)
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
src: .quad 115
dst: .quad 286
node_0: 
 .quad 442
 .quad node_1
node_1: 
 .quad 198
 .quad node_2
node_2: 
 .quad 292
 .quad node_3
node_3: 
 .quad 286
 .quad node_4
node_4: 
 .quad 378
 .quad node_5
node_5: 
 .quad 69
 .quad node_6
node_6: 
 .quad 378
 .quad node_7
node_7: 
 .quad 141
 .quad node_8
node_8: 
 .quad 292
 .quad node_9
node_9: 
 .quad 442
 .quad node_10
node_10: 
 .quad 15
 .quad node_11
node_11: 
 .quad 198
 .quad node_12
node_12: 
 .quad 183
 .quad node_13
node_13: 
 .quad 15
 .quad node_14
node_14: 
 .quad 15
 .quad node_15
node_15: 
 .quad 378
 .quad node_16
node_16: 
 .quad 360
 .quad node_17
node_17: 
 .quad 69
 .quad node_18
node_18: 
 .quad 115
 .quad node_19
node_19: 
 .quad 69
 .quad 0

