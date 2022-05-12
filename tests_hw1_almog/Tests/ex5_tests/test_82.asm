
.global _start

.section .text

# list before:
# [node_0:333]->[node_1:10]->[node_2:165]->[node_3:329]->[node_4:449]->[node_5:372]->[node_6:409]->[node_7:10]
# list after: (trying to swap 372 and 409)
# [node_0:333]->[node_1:10]->[node_2:165]->[node_3:329]->[node_4:449]->[node_6:409]->[node_5:372]->[node_7:10]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $333, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $10, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $165, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $329, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $449, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit

    cmpq $409, (node_6)
    jne bad_exit
    cmpq $node_5, (node_6+8)
    jne bad_exit

    cmpq $372, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit

    cmpq $10, (node_7)
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
src: .quad 372
dst: .quad 409
node_0: 
 .quad 333
 .quad node_1
node_1: 
 .quad 10
 .quad node_2
node_2: 
 .quad 165
 .quad node_3
node_3: 
 .quad 329
 .quad node_4
node_4: 
 .quad 449
 .quad node_5
node_5: 
 .quad 372
 .quad node_6
node_6: 
 .quad 409
 .quad node_7
node_7: 
 .quad 10
 .quad 0

