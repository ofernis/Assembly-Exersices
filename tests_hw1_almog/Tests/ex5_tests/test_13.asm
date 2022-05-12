
.global _start

.section .text

# list before:
# [node_0:253]->[node_1:431]->[node_2:328]->[node_3:449]->[node_4:243]->[node_5:61]->[node_6:61]->[node_7:264]
# list after: (trying to swap 243 and 243)
# [node_0:253]->[node_1:431]->[node_2:328]->[node_3:449]->[node_4:243]->[node_5:61]->[node_6:61]->[node_7:264]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $253, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $431, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $328, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $449, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $243, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $61, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $61, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $264, (node_7)
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
src: .quad 243
dst: .quad 243
node_0: 
 .quad 253
 .quad node_1
node_1: 
 .quad 431
 .quad node_2
node_2: 
 .quad 328
 .quad node_3
node_3: 
 .quad 449
 .quad node_4
node_4: 
 .quad 243
 .quad node_5
node_5: 
 .quad 61
 .quad node_6
node_6: 
 .quad 61
 .quad node_7
node_7: 
 .quad 264
 .quad 0

