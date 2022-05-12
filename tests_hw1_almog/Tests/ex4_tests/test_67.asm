
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  34_______                    
#           \                   
#         _249____________      
#        /                \     
#      _209          ____295_   
#     /             /        \  
#    120         __257_     358 
#               /      \        
#             |251|   285      

test_start:
    
    cmpq $34, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $249, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $295, (node_2)
    jne bad_exit
    cmpq $node_6, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $209, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $358, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $120, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $257, (node_6)
    jne bad_exit
    cmpq $new_node, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $285, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $285, (new_node)
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
 .quad 34
 .quad 0
 .quad node_1
node_1:
 .quad 249
 .quad node_3
 .quad node_2
node_2:
 .quad 295
 .quad node_6
 .quad node_4
node_3:
 .quad 209
 .quad node_5
 .quad 0
node_4:
 .quad 358
 .quad 0
 .quad 0
node_5:
 .quad 120
 .quad 0
 .quad 0
node_6:
 .quad 257
 .quad new_node
 .quad node_8
node_8:
 .quad 285
 .quad 0
 .quad 0
new_node:
 .quad 285
 .quad 0
 .quad 0

