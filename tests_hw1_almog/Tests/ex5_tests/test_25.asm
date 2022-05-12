
.global _start

.section .text

# list before:
# [node_0:145]->[node_1:110]->[node_2:135]->[node_3:145]->[node_4:135]->[node_5:486]->[node_6:135]->[node_7:495]->[node_8:198]->[node_9:110]->[node_10:188]->[node_11:228]->[node_12:148]->[node_13:228]->[node_14:15]->[node_15:145]->[node_16:145]
# list after: (trying to swap 365 and 145)
# [node_0:145]->[node_1:110]->[node_2:135]->[node_3:145]->[node_4:135]->[node_5:486]->[node_6:135]->[node_7:495]->[node_8:198]->[node_9:110]->[node_10:188]->[node_11:228]->[node_12:148]->[node_13:228]->[node_14:15]->[node_15:145]->[node_16:145]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $145, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $110, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $135, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $145, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $135, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $486, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $135, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $495, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $198, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $110, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $188, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $228, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $148, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $228, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $15, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $145, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $145, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
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
src: .quad 365
dst: .quad 145
node_0: 
 .quad 145
 .quad node_1
node_1: 
 .quad 110
 .quad node_2
node_2: 
 .quad 135
 .quad node_3
node_3: 
 .quad 145
 .quad node_4
node_4: 
 .quad 135
 .quad node_5
node_5: 
 .quad 486
 .quad node_6
node_6: 
 .quad 135
 .quad node_7
node_7: 
 .quad 495
 .quad node_8
node_8: 
 .quad 198
 .quad node_9
node_9: 
 .quad 110
 .quad node_10
node_10: 
 .quad 188
 .quad node_11
node_11: 
 .quad 228
 .quad node_12
node_12: 
 .quad 148
 .quad node_13
node_13: 
 .quad 228
 .quad node_14
node_14: 
 .quad 15
 .quad node_15
node_15: 
 .quad 145
 .quad node_16
node_16: 
 .quad 145
 .quad 0

