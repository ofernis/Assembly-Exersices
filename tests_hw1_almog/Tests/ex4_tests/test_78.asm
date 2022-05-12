
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _______________353_   
#   /                   \  
#  147______           477 
#           \              
#        __233_            
#       /      \           
#     |151|   298_         
#                 \        
#                322      

test_start:
    
    cmpq $353, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_5, (node_0+16)
    jne bad_exit

    cmpq $147, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $233, (node_2)
    jne bad_exit
    cmpq $new_node, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $298, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $322, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $477, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $477, (new_node)
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
 .quad 353
 .quad node_1
 .quad node_5
node_1:
 .quad 147
 .quad 0
 .quad node_2
node_2:
 .quad 233
 .quad new_node
 .quad node_3
node_3:
 .quad 298
 .quad 0
 .quad node_4
node_4:
 .quad 322
 .quad 0
 .quad 0
node_5:
 .quad 477
 .quad 0
 .quad 0
new_node:
 .quad 477
 .quad 0
 .quad 0

