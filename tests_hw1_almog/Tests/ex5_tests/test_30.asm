
.global _start

.section .text

# list before:
# [node_0:211]->[node_1:146]->[node_2:146]->[node_3:121]->[node_4:143]->[node_5:143]->[node_6:121]->[node_7:143]->[node_8:143]
# list after: (trying to swap 143 and 121)
# [node_0:211]->[node_1:146]->[node_2:146]->[node_3:121]->[node_4:143]->[node_5:143]->[node_6:121]->[node_7:143]->[node_8:143]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $211, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $146, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $146, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $121, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $143, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $143, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $121, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $143, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $143, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
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
src: .quad 143
dst: .quad 121
node_0: 
 .quad 211
 .quad node_1
node_1: 
 .quad 146
 .quad node_2
node_2: 
 .quad 146
 .quad node_3
node_3: 
 .quad 121
 .quad node_4
node_4: 
 .quad 143
 .quad node_5
node_5: 
 .quad 143
 .quad node_6
node_6: 
 .quad 121
 .quad node_7
node_7: 
 .quad 143
 .quad node_8
node_8: 
 .quad 143
 .quad 0

