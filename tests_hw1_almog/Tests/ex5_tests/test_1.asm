
.global _start

.section .text

# list before:
# [node_0:313]->[node_1:374]->[node_2:109]->[node_3:304]->[node_4:155]->[node_5:461]->[node_6:410]->[node_7:149]->[node_8:461]->[node_9:461]
# list after: (trying to swap 155 and 374)
# [node_0:313]->[node_4:155]->[node_2:109]->[node_3:304]->[node_1:374]->[node_5:461]->[node_6:410]->[node_7:149]->[node_8:461]->[node_9:461]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $313, (node_0)
    jne bad_exit
    cmpq $node_4, (node_0+8)
    jne bad_exit

    cmpq $155, (node_4)
    jne bad_exit
    cmpq $node_2, (node_4+8)
    jne bad_exit

    cmpq $109, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $304, (node_3)
    jne bad_exit
    cmpq $node_1, (node_3+8)
    jne bad_exit

    cmpq $374, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit

    cmpq $461, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $410, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $149, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $461, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $461, (node_9)
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
src: .quad 155
dst: .quad 374
node_0: 
 .quad 313
 .quad node_1
node_1: 
 .quad 374
 .quad node_2
node_2: 
 .quad 109
 .quad node_3
node_3: 
 .quad 304
 .quad node_4
node_4: 
 .quad 155
 .quad node_5
node_5: 
 .quad 461
 .quad node_6
node_6: 
 .quad 410
 .quad node_7
node_7: 
 .quad 149
 .quad node_8
node_8: 
 .quad 461
 .quad node_9
node_9: 
 .quad 461
 .quad 0

