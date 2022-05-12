
.global _start

.section .text

# list before:
# [node_0:156]->[node_1:426]->[node_2:171]->[node_3:482]->[node_4:35]->[node_5:171]->[node_6:237]->[node_7:398]->[node_8:35]->[node_9:92]->[node_10:140]->[node_11:482]->[node_12:237]->[node_13:35]->[node_14:92]->[node_15:171]->[node_16:237]
# list after: (trying to swap 156 and 140)
# [node_10:140]->[node_1:426]->[node_2:171]->[node_3:482]->[node_4:35]->[node_5:171]->[node_6:237]->[node_7:398]->[node_8:35]->[node_9:92]->[node_0:156]->[node_11:482]->[node_12:237]->[node_13:35]->[node_14:92]->[node_15:171]->[node_16:237]

test_start:
    cmpq $node_10, (head)
    jne bad_exit
    
    cmpq $140, (node_10)
    jne bad_exit
    cmpq $node_1, (node_10+8)
    jne bad_exit

    cmpq $426, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $171, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $482, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $35, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $171, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $237, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $398, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $35, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $92, (node_9)
    jne bad_exit
    cmpq $node_0, (node_9+8)
    jne bad_exit

    cmpq $156, (node_0)
    jne bad_exit
    cmpq $node_11, (node_0+8)
    jne bad_exit

    cmpq $482, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $237, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $35, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $92, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $171, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $237, (node_16)
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
src: .quad 156
dst: .quad 140
node_0: 
 .quad 156
 .quad node_1
node_1: 
 .quad 426
 .quad node_2
node_2: 
 .quad 171
 .quad node_3
node_3: 
 .quad 482
 .quad node_4
node_4: 
 .quad 35
 .quad node_5
node_5: 
 .quad 171
 .quad node_6
node_6: 
 .quad 237
 .quad node_7
node_7: 
 .quad 398
 .quad node_8
node_8: 
 .quad 35
 .quad node_9
node_9: 
 .quad 92
 .quad node_10
node_10: 
 .quad 140
 .quad node_11
node_11: 
 .quad 482
 .quad node_12
node_12: 
 .quad 237
 .quad node_13
node_13: 
 .quad 35
 .quad node_14
node_14: 
 .quad 92
 .quad node_15
node_15: 
 .quad 171
 .quad node_16
node_16: 
 .quad 237
 .quad 0

