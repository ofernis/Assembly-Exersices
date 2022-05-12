
.global _start

.section .text

# list before:
# [node_0:296]->[node_1:9]->[node_2:160]->[node_3:160]->[node_4:6]->[node_5:160]->[node_6:160]->[node_7:160]
# list after: (trying to swap 160 and 276)
# [node_0:296]->[node_1:9]->[node_2:160]->[node_3:160]->[node_4:6]->[node_5:160]->[node_6:160]->[node_7:160]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $296, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $9, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $160, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $160, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $6, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $160, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $160, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $160, (node_7)
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
src: .quad 160
dst: .quad 276
node_0: 
 .quad 296
 .quad node_1
node_1: 
 .quad 9
 .quad node_2
node_2: 
 .quad 160
 .quad node_3
node_3: 
 .quad 160
 .quad node_4
node_4: 
 .quad 6
 .quad node_5
node_5: 
 .quad 160
 .quad node_6
node_6: 
 .quad 160
 .quad node_7
node_7: 
 .quad 160
 .quad 0

