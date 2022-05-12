
.global _start

.section .text

# list before:
# [node_0:223]->[node_1:269]->[node_2:377]->[node_3:223]->[node_4:81]->[node_5:487]->[node_6:13]->[node_7:110]
# list after: (trying to swap 81 and 13)
# [node_0:223]->[node_1:269]->[node_2:377]->[node_3:223]->[node_6:13]->[node_5:487]->[node_4:81]->[node_7:110]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $223, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $269, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $377, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $223, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit

    cmpq $13, (node_6)
    jne bad_exit
    cmpq $node_5, (node_6+8)
    jne bad_exit

    cmpq $487, (node_5)
    jne bad_exit
    cmpq $node_4, (node_5+8)
    jne bad_exit

    cmpq $81, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit

    cmpq $110, (node_7)
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
src: .quad 81
dst: .quad 13
node_0: 
 .quad 223
 .quad node_1
node_1: 
 .quad 269
 .quad node_2
node_2: 
 .quad 377
 .quad node_3
node_3: 
 .quad 223
 .quad node_4
node_4: 
 .quad 81
 .quad node_5
node_5: 
 .quad 487
 .quad node_6
node_6: 
 .quad 13
 .quad node_7
node_7: 
 .quad 110
 .quad 0

