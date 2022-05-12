
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    159_______      
#   /          \     
#  14        _397_   
#           /     \  
#         _364   478 
#        /           
#       311         

test_start:
    
    cmpq $159, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $14, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $397, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_5, (node_2+16)
    jne bad_exit

    cmpq $364, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $311, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $478, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $478, (new_node)
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
 .quad 159
 .quad node_1
 .quad node_2
node_1:
 .quad 14
 .quad 0
 .quad 0
node_2:
 .quad 397
 .quad node_3
 .quad node_5
node_3:
 .quad 364
 .quad node_4
 .quad 0
node_4:
 .quad 311
 .quad 0
 .quad 0
node_5:
 .quad 478
 .quad 0
 .quad 0
new_node:
 .quad 478
 .quad 0
 .quad 0

