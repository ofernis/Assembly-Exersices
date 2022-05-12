
.global _start

.section .text

# list before:
# [node_0:147]->[node_1:339]->[node_2:339]->[node_3:223]->[node_4:364]->[node_5:435]->[node_6:279]->[node_7:39]->[node_8:249]->[node_9:367]->[node_10:443]->[node_11:70]->[node_12:39]->[node_13:39]->[node_14:103]
# list after: (trying to swap 147 and 279)
# [node_6:279]->[node_1:339]->[node_2:339]->[node_3:223]->[node_4:364]->[node_5:435]->[node_0:147]->[node_7:39]->[node_8:249]->[node_9:367]->[node_10:443]->[node_11:70]->[node_12:39]->[node_13:39]->[node_14:103]

test_start:
    cmpq $node_6, (head)
    jne bad_exit
    
    cmpq $279, (node_6)
    jne bad_exit
    cmpq $node_1, (node_6+8)
    jne bad_exit

    cmpq $339, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $339, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $223, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $364, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $435, (node_5)
    jne bad_exit
    cmpq $node_0, (node_5+8)
    jne bad_exit

    cmpq $147, (node_0)
    jne bad_exit
    cmpq $node_7, (node_0+8)
    jne bad_exit

    cmpq $39, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $249, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $367, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $443, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $70, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $39, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $39, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $103, (node_14)
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
src: .quad 147
dst: .quad 279
node_0: 
 .quad 147
 .quad node_1
node_1: 
 .quad 339
 .quad node_2
node_2: 
 .quad 339
 .quad node_3
node_3: 
 .quad 223
 .quad node_4
node_4: 
 .quad 364
 .quad node_5
node_5: 
 .quad 435
 .quad node_6
node_6: 
 .quad 279
 .quad node_7
node_7: 
 .quad 39
 .quad node_8
node_8: 
 .quad 249
 .quad node_9
node_9: 
 .quad 367
 .quad node_10
node_10: 
 .quad 443
 .quad node_11
node_11: 
 .quad 70
 .quad node_12
node_12: 
 .quad 39
 .quad node_13
node_13: 
 .quad 39
 .quad node_14
node_14: 
 .quad 103
 .quad 0

