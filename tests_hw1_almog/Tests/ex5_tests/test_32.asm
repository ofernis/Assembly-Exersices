
.global _start

.section .text

# list before:
# [node_0:374]->[node_1:410]->[node_2:388]->[node_3:410]->[node_4:486]->[node_5:299]->[node_6:388]->[node_7:255]->[node_8:221]->[node_9:412]->[node_10:486]->[node_11:74]->[node_12:221]->[node_13:255]->[node_14:412]->[node_15:299]->[node_16:486]->[node_17:486]
# list after: (trying to swap 374 and 74)
# [node_11:74]->[node_1:410]->[node_2:388]->[node_3:410]->[node_4:486]->[node_5:299]->[node_6:388]->[node_7:255]->[node_8:221]->[node_9:412]->[node_10:486]->[node_0:374]->[node_12:221]->[node_13:255]->[node_14:412]->[node_15:299]->[node_16:486]->[node_17:486]

test_start:
    cmpq $node_11, (head)
    jne bad_exit
    
    cmpq $74, (node_11)
    jne bad_exit
    cmpq $node_1, (node_11+8)
    jne bad_exit

    cmpq $410, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $388, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $410, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $486, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $299, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $388, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $255, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $221, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $412, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $486, (node_10)
    jne bad_exit
    cmpq $node_0, (node_10+8)
    jne bad_exit

    cmpq $374, (node_0)
    jne bad_exit
    cmpq $node_12, (node_0+8)
    jne bad_exit

    cmpq $221, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $255, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $412, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $299, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $486, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $486, (node_17)
    jne bad_exit
    cmpq $0, (node_17+8)
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
src: .quad 374
dst: .quad 74
node_0: 
 .quad 374
 .quad node_1
node_1: 
 .quad 410
 .quad node_2
node_2: 
 .quad 388
 .quad node_3
node_3: 
 .quad 410
 .quad node_4
node_4: 
 .quad 486
 .quad node_5
node_5: 
 .quad 299
 .quad node_6
node_6: 
 .quad 388
 .quad node_7
node_7: 
 .quad 255
 .quad node_8
node_8: 
 .quad 221
 .quad node_9
node_9: 
 .quad 412
 .quad node_10
node_10: 
 .quad 486
 .quad node_11
node_11: 
 .quad 74
 .quad node_12
node_12: 
 .quad 221
 .quad node_13
node_13: 
 .quad 255
 .quad node_14
node_14: 
 .quad 412
 .quad node_15
node_15: 
 .quad 299
 .quad node_16
node_16: 
 .quad 486
 .quad node_17
node_17: 
 .quad 486
 .quad 0

