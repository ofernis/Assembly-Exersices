
.global _start

.section .text

# list before:
# [node_0:171]->[node_1:403]->[node_2:104]->[node_3:414]->[node_4:194]->[node_5:82]->[node_6:432]->[node_7:227]->[node_8:419]->[node_9:423]->[node_10:176]->[node_11:167]->[node_12:240]
# list after: (trying to swap 419 and 167)
# [node_0:171]->[node_1:403]->[node_2:104]->[node_3:414]->[node_4:194]->[node_5:82]->[node_6:432]->[node_7:227]->[node_11:167]->[node_9:423]->[node_10:176]->[node_8:419]->[node_12:240]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $171, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $403, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $104, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $414, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $194, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $82, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $432, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $227, (node_7)
    jne bad_exit
    cmpq $node_11, (node_7+8)
    jne bad_exit

    cmpq $167, (node_11)
    jne bad_exit
    cmpq $node_9, (node_11+8)
    jne bad_exit

    cmpq $423, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $176, (node_10)
    jne bad_exit
    cmpq $node_8, (node_10+8)
    jne bad_exit

    cmpq $419, (node_8)
    jne bad_exit
    cmpq $node_12, (node_8+8)
    jne bad_exit

    cmpq $240, (node_12)
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
src: .quad 419
dst: .quad 167
node_0: 
 .quad 171
 .quad node_1
node_1: 
 .quad 403
 .quad node_2
node_2: 
 .quad 104
 .quad node_3
node_3: 
 .quad 414
 .quad node_4
node_4: 
 .quad 194
 .quad node_5
node_5: 
 .quad 82
 .quad node_6
node_6: 
 .quad 432
 .quad node_7
node_7: 
 .quad 227
 .quad node_8
node_8: 
 .quad 419
 .quad node_9
node_9: 
 .quad 423
 .quad node_10
node_10: 
 .quad 176
 .quad node_11
node_11: 
 .quad 167
 .quad node_12
node_12: 
 .quad 240
 .quad 0

