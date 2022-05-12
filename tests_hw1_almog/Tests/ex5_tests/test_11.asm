
.global _start

.section .text

# list before:
# [node_0:278]->[node_1:329]->[node_2:18]->[node_3:27]->[node_4:132]->[node_5:278]
# list after: (trying to swap 132 and 132)
# [node_0:278]->[node_1:329]->[node_2:18]->[node_3:27]->[node_4:132]->[node_5:278]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $278, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $329, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $18, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $27, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $132, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $278, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
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
src: .quad 132
dst: .quad 132
node_0: 
 .quad 278
 .quad node_1
node_1: 
 .quad 329
 .quad node_2
node_2: 
 .quad 18
 .quad node_3
node_3: 
 .quad 27
 .quad node_4
node_4: 
 .quad 132
 .quad node_5
node_5: 
 .quad 278
 .quad 0

