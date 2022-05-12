
.global _start

.section .text

# list before:
# [node_0:244]->[node_1:45]->[node_2:213]->[node_3:482]->[node_4:338]->[node_5:70]
# list after: (trying to swap 482 and 70)
# [node_0:244]->[node_1:45]->[node_2:213]->[node_5:70]->[node_4:338]->[node_3:482]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $244, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $45, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $213, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit

    cmpq $70, (node_5)
    jne bad_exit
    cmpq $node_4, (node_5+8)
    jne bad_exit

    cmpq $338, (node_4)
    jne bad_exit
    cmpq $node_3, (node_4+8)
    jne bad_exit

    cmpq $482, (node_3)
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
src: .quad 482
dst: .quad 70
node_0: 
 .quad 244
 .quad node_1
node_1: 
 .quad 45
 .quad node_2
node_2: 
 .quad 213
 .quad node_3
node_3: 
 .quad 482
 .quad node_4
node_4: 
 .quad 338
 .quad node_5
node_5: 
 .quad 70
 .quad 0

