
.global _start

.section .text

# list before:
# [node_0:299]->[node_1:183]->[node_2:299]->[node_3:178]->[node_4:178]->[node_5:263]->[node_6:299]->[node_7:82]->[node_8:310]->[node_9:310]
# list after: (trying to swap 263 and 82)
# [node_0:299]->[node_1:183]->[node_2:299]->[node_3:178]->[node_4:178]->[node_7:82]->[node_6:299]->[node_5:263]->[node_8:310]->[node_9:310]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $299, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $183, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $299, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $178, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $178, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit

    cmpq $82, (node_7)
    jne bad_exit
    cmpq $node_6, (node_7+8)
    jne bad_exit

    cmpq $299, (node_6)
    jne bad_exit
    cmpq $node_5, (node_6+8)
    jne bad_exit

    cmpq $263, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit

    cmpq $310, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $310, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
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
src: .quad 263
dst: .quad 82
node_0: 
 .quad 299
 .quad node_1
node_1: 
 .quad 183
 .quad node_2
node_2: 
 .quad 299
 .quad node_3
node_3: 
 .quad 178
 .quad node_4
node_4: 
 .quad 178
 .quad node_5
node_5: 
 .quad 263
 .quad node_6
node_6: 
 .quad 299
 .quad node_7
node_7: 
 .quad 82
 .quad node_8
node_8: 
 .quad 310
 .quad node_9
node_9: 
 .quad 310
 .quad 0

