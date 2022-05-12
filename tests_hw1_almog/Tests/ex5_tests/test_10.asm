
.global _start

.section .text

# list before:
# [node_0:454]->[node_1:329]->[node_2:394]->[node_3:477]->[node_4:435]->[node_5:244]->[node_6:159]->[node_7:358]->[node_8:106]->[node_9:317]->[node_10:435]->[node_11:159]
# list after: (trying to swap 477 and 394)
# [node_0:454]->[node_1:329]->[node_3:477]->[node_2:394]->[node_4:435]->[node_5:244]->[node_6:159]->[node_7:358]->[node_8:106]->[node_9:317]->[node_10:435]->[node_11:159]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $454, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $329, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit

    cmpq $477, (node_3)
    jne bad_exit
    cmpq $node_2, (node_3+8)
    jne bad_exit

    cmpq $394, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit

    cmpq $435, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $244, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $159, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $358, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $106, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $317, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $435, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $159, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
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
src: .quad 477
dst: .quad 394
node_0: 
 .quad 454
 .quad node_1
node_1: 
 .quad 329
 .quad node_2
node_2: 
 .quad 394
 .quad node_3
node_3: 
 .quad 477
 .quad node_4
node_4: 
 .quad 435
 .quad node_5
node_5: 
 .quad 244
 .quad node_6
node_6: 
 .quad 159
 .quad node_7
node_7: 
 .quad 358
 .quad node_8
node_8: 
 .quad 106
 .quad node_9
node_9: 
 .quad 317
 .quad node_10
node_10: 
 .quad 435
 .quad node_11
node_11: 
 .quad 159
 .quad 0

