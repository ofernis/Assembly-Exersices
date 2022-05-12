
.global _start

.section .text

# list before:
# [node_0:253]->[node_1:150]->[node_2:55]->[node_3:33]->[node_4:486]->[node_5:186]->[node_6:266]->[node_7:120]->[node_8:160]->[node_9:412]->[node_10:118]->[node_11:332]->[node_12:426]->[node_13:81]->[node_14:379]
# list after: (trying to swap 33 and 33)
# [node_0:253]->[node_1:150]->[node_2:55]->[node_3:33]->[node_4:486]->[node_5:186]->[node_6:266]->[node_7:120]->[node_8:160]->[node_9:412]->[node_10:118]->[node_11:332]->[node_12:426]->[node_13:81]->[node_14:379]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $253, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $150, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $55, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $33, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $486, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $186, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $266, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $120, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $160, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $412, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $118, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $332, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $426, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $81, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $379, (node_14)
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
src: .quad 33
dst: .quad 33
node_0: 
 .quad 253
 .quad node_1
node_1: 
 .quad 150
 .quad node_2
node_2: 
 .quad 55
 .quad node_3
node_3: 
 .quad 33
 .quad node_4
node_4: 
 .quad 486
 .quad node_5
node_5: 
 .quad 186
 .quad node_6
node_6: 
 .quad 266
 .quad node_7
node_7: 
 .quad 120
 .quad node_8
node_8: 
 .quad 160
 .quad node_9
node_9: 
 .quad 412
 .quad node_10
node_10: 
 .quad 118
 .quad node_11
node_11: 
 .quad 332
 .quad node_12
node_12: 
 .quad 426
 .quad node_13
node_13: 
 .quad 81
 .quad node_14
node_14: 
 .quad 379
 .quad 0

