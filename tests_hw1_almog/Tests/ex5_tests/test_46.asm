
.global _start

.section .text

# list before:
# [node_0:244]->[node_1:113]->[node_2:113]->[node_3:192]->[node_4:157]->[node_5:221]->[node_6:267]
# list after: (trying to swap 192 and 267)
# [node_0:244]->[node_1:113]->[node_2:113]->[node_6:267]->[node_4:157]->[node_5:221]->[node_3:192]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $244, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $113, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $113, (node_2)
    jne bad_exit
    cmpq $node_6, (node_2+8)
    jne bad_exit

    cmpq $267, (node_6)
    jne bad_exit
    cmpq $node_4, (node_6+8)
    jne bad_exit

    cmpq $157, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $221, (node_5)
    jne bad_exit
    cmpq $node_3, (node_5+8)
    jne bad_exit

    cmpq $192, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
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
src: .quad 192
dst: .quad 267
node_0: 
 .quad 244
 .quad node_1
node_1: 
 .quad 113
 .quad node_2
node_2: 
 .quad 113
 .quad node_3
node_3: 
 .quad 192
 .quad node_4
node_4: 
 .quad 157
 .quad node_5
node_5: 
 .quad 221
 .quad node_6
node_6: 
 .quad 267
 .quad 0

