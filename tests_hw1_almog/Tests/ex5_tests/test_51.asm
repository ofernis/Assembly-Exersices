
.global _start

.section .text

# list before:
# [node_0:360]->[node_1:233]->[node_2:233]->[node_3:496]->[node_4:360]->[node_5:496]->[node_6:206]->[node_7:288]->[node_8:280]->[node_9:165]->[node_10:60]->[node_11:165]->[node_12:496]
# list after: (trying to swap 206 and 288)
# [node_0:360]->[node_1:233]->[node_2:233]->[node_3:496]->[node_4:360]->[node_5:496]->[node_7:288]->[node_6:206]->[node_8:280]->[node_9:165]->[node_10:60]->[node_11:165]->[node_12:496]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $360, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $233, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $233, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $496, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $360, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $496, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit

    cmpq $288, (node_7)
    jne bad_exit
    cmpq $node_6, (node_7+8)
    jne bad_exit

    cmpq $206, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit

    cmpq $280, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $165, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $60, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $165, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $496, (node_12)
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
src: .quad 206
dst: .quad 288
node_0: 
 .quad 360
 .quad node_1
node_1: 
 .quad 233
 .quad node_2
node_2: 
 .quad 233
 .quad node_3
node_3: 
 .quad 496
 .quad node_4
node_4: 
 .quad 360
 .quad node_5
node_5: 
 .quad 496
 .quad node_6
node_6: 
 .quad 206
 .quad node_7
node_7: 
 .quad 288
 .quad node_8
node_8: 
 .quad 280
 .quad node_9
node_9: 
 .quad 165
 .quad node_10
node_10: 
 .quad 60
 .quad node_11
node_11: 
 .quad 165
 .quad node_12
node_12: 
 .quad 496
 .quad 0

