
.global _start

.section .text

# list before:
# [node_0:243]->[node_1:105]->[node_2:90]->[node_3:14]->[node_4:243]->[node_5:14]->[node_6:274]->[node_7:243]->[node_8:243]
# list after: (trying to swap 90 and 90)
# [node_0:243]->[node_1:105]->[node_2:90]->[node_3:14]->[node_4:243]->[node_5:14]->[node_6:274]->[node_7:243]->[node_8:243]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $243, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $105, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $90, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $14, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $243, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $14, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $274, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $243, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $243, (node_8)
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
src: .quad 90
dst: .quad 90
node_0: 
 .quad 243
 .quad node_1
node_1: 
 .quad 105
 .quad node_2
node_2: 
 .quad 90
 .quad node_3
node_3: 
 .quad 14
 .quad node_4
node_4: 
 .quad 243
 .quad node_5
node_5: 
 .quad 14
 .quad node_6
node_6: 
 .quad 274
 .quad node_7
node_7: 
 .quad 243
 .quad node_8
node_8: 
 .quad 243
 .quad 0

