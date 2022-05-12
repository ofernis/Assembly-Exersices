
.global _start

.section .text

# list before:
# [node_0:206]->[node_1:161]->[node_2:499]->[node_3:346]->[node_4:495]->[node_5:319]->[node_6:87]->[node_7:166]->[node_8:87]->[node_9:206]->[node_10:495]->[node_11:206]->[node_12:345]->[node_13:3]->[node_14:132]
# list after: (trying to swap 319 and 3)
# [node_0:206]->[node_1:161]->[node_2:499]->[node_3:346]->[node_4:495]->[node_13:3]->[node_6:87]->[node_7:166]->[node_8:87]->[node_9:206]->[node_10:495]->[node_11:206]->[node_12:345]->[node_5:319]->[node_14:132]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $206, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $161, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $499, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $346, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $495, (node_4)
    jne bad_exit
    cmpq $node_13, (node_4+8)
    jne bad_exit

    cmpq $3, (node_13)
    jne bad_exit
    cmpq $node_6, (node_13+8)
    jne bad_exit

    cmpq $87, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $166, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $87, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $206, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $495, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $206, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $345, (node_12)
    jne bad_exit
    cmpq $node_5, (node_12+8)
    jne bad_exit

    cmpq $319, (node_5)
    jne bad_exit
    cmpq $node_14, (node_5+8)
    jne bad_exit

    cmpq $132, (node_14)
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
src: .quad 319
dst: .quad 3
node_0: 
 .quad 206
 .quad node_1
node_1: 
 .quad 161
 .quad node_2
node_2: 
 .quad 499
 .quad node_3
node_3: 
 .quad 346
 .quad node_4
node_4: 
 .quad 495
 .quad node_5
node_5: 
 .quad 319
 .quad node_6
node_6: 
 .quad 87
 .quad node_7
node_7: 
 .quad 166
 .quad node_8
node_8: 
 .quad 87
 .quad node_9
node_9: 
 .quad 206
 .quad node_10
node_10: 
 .quad 495
 .quad node_11
node_11: 
 .quad 206
 .quad node_12
node_12: 
 .quad 345
 .quad node_13
node_13: 
 .quad 3
 .quad node_14
node_14: 
 .quad 132
 .quad 0

