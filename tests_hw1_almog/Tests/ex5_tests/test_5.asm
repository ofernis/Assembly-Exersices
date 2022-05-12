
.global _start

.section .text

# list before:
# [node_0:185]->[node_1:185]->[node_2:371]->[node_3:482]->[node_4:326]->[node_5:376]->[node_6:376]->[node_7:371]->[node_8:385]->[node_9:189]
# list after: (trying to swap 385 and 482)
# [node_0:185]->[node_1:185]->[node_2:371]->[node_8:385]->[node_4:326]->[node_5:376]->[node_6:376]->[node_7:371]->[node_3:482]->[node_9:189]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $185, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $185, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $371, (node_2)
    jne bad_exit
    cmpq $node_8, (node_2+8)
    jne bad_exit

    cmpq $385, (node_8)
    jne bad_exit
    cmpq $node_4, (node_8+8)
    jne bad_exit

    cmpq $326, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $376, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $376, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $371, (node_7)
    jne bad_exit
    cmpq $node_3, (node_7+8)
    jne bad_exit

    cmpq $482, (node_3)
    jne bad_exit
    cmpq $node_9, (node_3+8)
    jne bad_exit

    cmpq $189, (node_9)
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
src: .quad 385
dst: .quad 482
node_0: 
 .quad 185
 .quad node_1
node_1: 
 .quad 185
 .quad node_2
node_2: 
 .quad 371
 .quad node_3
node_3: 
 .quad 482
 .quad node_4
node_4: 
 .quad 326
 .quad node_5
node_5: 
 .quad 376
 .quad node_6
node_6: 
 .quad 376
 .quad node_7
node_7: 
 .quad 371
 .quad node_8
node_8: 
 .quad 385
 .quad node_9
node_9: 
 .quad 189
 .quad 0

