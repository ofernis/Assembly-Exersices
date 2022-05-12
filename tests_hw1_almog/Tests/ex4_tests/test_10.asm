
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    59___           
#   /     \          
#  28    92____      
#       /      \     
#      90    _372_   
#           /     \  
#          109   379

test_start:
    
    cmpq $59, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $28, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $92, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $372, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_6, (node_3+16)
    jne bad_exit

    cmpq $90, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $109, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $379, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $379, (new_node)
    jne bad_exit
    cmpq $0, (new_node+8)
    jne bad_exit
    cmpq $0, (new_node+16)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
root:
 .quad node_0
node_0:
 .quad 59
 .quad node_1
 .quad node_2
node_1:
 .quad 28
 .quad 0
 .quad 0
node_2:
 .quad 92
 .quad node_4
 .quad node_3
node_3:
 .quad 372
 .quad node_5
 .quad node_6
node_4:
 .quad 90
 .quad 0
 .quad 0
node_5:
 .quad 109
 .quad 0
 .quad 0
node_6:
 .quad 379
 .quad 0
 .quad 0
new_node:
 .quad 379
 .quad 0
 .quad 0

