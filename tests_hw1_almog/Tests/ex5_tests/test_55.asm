
.global _start

.section .text

# list before:
# [node_0:444]->[node_1:296]->[node_2:423]->[node_3:150]->[node_4:486]->[node_5:214]->[node_6:329]->[node_7:403]
# list after: (trying to swap 296 and 150)
# [node_0:444]->[node_3:150]->[node_2:423]->[node_1:296]->[node_4:486]->[node_5:214]->[node_6:329]->[node_7:403]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $444, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit

    cmpq $150, (node_3)
    jne bad_exit
    cmpq $node_2, (node_3+8)
    jne bad_exit

    cmpq $423, (node_2)
    jne bad_exit
    cmpq $node_1, (node_2+8)
    jne bad_exit

    cmpq $296, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit

    cmpq $486, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $214, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $329, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $403, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
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
src: .quad 296
dst: .quad 150
node_0: 
 .quad 444
 .quad node_1
node_1: 
 .quad 296
 .quad node_2
node_2: 
 .quad 423
 .quad node_3
node_3: 
 .quad 150
 .quad node_4
node_4: 
 .quad 486
 .quad node_5
node_5: 
 .quad 214
 .quad node_6
node_6: 
 .quad 329
 .quad node_7
node_7: 
 .quad 403
 .quad 0

