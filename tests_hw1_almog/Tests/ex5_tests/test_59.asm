
.global _start

.section .text

# list before:
# [node_0:423]->[node_1:221]->[node_2:350]->[node_3:419]->[node_4:453]->[node_5:380]->[node_6:388]->[node_7:320]->[node_8:320]->[node_9:380]->[node_10:423]->[node_11:388]->[node_12:229]->[node_13:453]->[node_14:107]->[node_15:221]->[node_16:221]
# list after: (trying to swap 229 and 107)
# [node_0:423]->[node_1:221]->[node_2:350]->[node_3:419]->[node_4:453]->[node_5:380]->[node_6:388]->[node_7:320]->[node_8:320]->[node_9:380]->[node_10:423]->[node_11:388]->[node_14:107]->[node_13:453]->[node_12:229]->[node_15:221]->[node_16:221]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $423, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $221, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $350, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $419, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $453, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $380, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $388, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $320, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $320, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $380, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $423, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $388, (node_11)
    jne bad_exit
    cmpq $node_14, (node_11+8)
    jne bad_exit

    cmpq $107, (node_14)
    jne bad_exit
    cmpq $node_13, (node_14+8)
    jne bad_exit

    cmpq $453, (node_13)
    jne bad_exit
    cmpq $node_12, (node_13+8)
    jne bad_exit

    cmpq $229, (node_12)
    jne bad_exit
    cmpq $node_15, (node_12+8)
    jne bad_exit

    cmpq $221, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $221, (node_16)
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
src: .quad 229
dst: .quad 107
node_0: 
 .quad 423
 .quad node_1
node_1: 
 .quad 221
 .quad node_2
node_2: 
 .quad 350
 .quad node_3
node_3: 
 .quad 419
 .quad node_4
node_4: 
 .quad 453
 .quad node_5
node_5: 
 .quad 380
 .quad node_6
node_6: 
 .quad 388
 .quad node_7
node_7: 
 .quad 320
 .quad node_8
node_8: 
 .quad 320
 .quad node_9
node_9: 
 .quad 380
 .quad node_10
node_10: 
 .quad 423
 .quad node_11
node_11: 
 .quad 388
 .quad node_12
node_12: 
 .quad 229
 .quad node_13
node_13: 
 .quad 453
 .quad node_14
node_14: 
 .quad 107
 .quad node_15
node_15: 
 .quad 221
 .quad node_16
node_16: 
 .quad 221
 .quad 0

