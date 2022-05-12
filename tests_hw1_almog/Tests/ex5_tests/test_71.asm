
.global _start

.section .text

# list before:
# [node_0:433]->[node_1:62]->[node_2:13]->[node_3:433]->[node_4:246]->[node_5:187]->[node_6:433]->[node_7:62]->[node_8:217]
# list after: (trying to swap 246 and 217)
# [node_0:433]->[node_1:62]->[node_2:13]->[node_3:433]->[node_8:217]->[node_5:187]->[node_6:433]->[node_7:62]->[node_4:246]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $433, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $62, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $13, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $433, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit

    cmpq $217, (node_8)
    jne bad_exit
    cmpq $node_5, (node_8+8)
    jne bad_exit

    cmpq $187, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $433, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $62, (node_7)
    jne bad_exit
    cmpq $node_4, (node_7+8)
    jne bad_exit

    cmpq $246, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
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
src: .quad 246
dst: .quad 217
node_0: 
 .quad 433
 .quad node_1
node_1: 
 .quad 62
 .quad node_2
node_2: 
 .quad 13
 .quad node_3
node_3: 
 .quad 433
 .quad node_4
node_4: 
 .quad 246
 .quad node_5
node_5: 
 .quad 187
 .quad node_6
node_6: 
 .quad 433
 .quad node_7
node_7: 
 .quad 62
 .quad node_8
node_8: 
 .quad 217
 .quad 0

