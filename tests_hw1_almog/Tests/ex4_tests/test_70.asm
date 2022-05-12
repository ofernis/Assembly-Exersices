
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  17________           
#            \          
#      _____133_        
#     /         \       
#    33___     185__    
#         \         \   
#        126      |418| 
#       /               
#      93              

test_start:
    
    cmpq $17, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $133, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $33, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $126, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $185, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $new_node, (node_4+16)
    jne bad_exit

    cmpq $93, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $93, (new_node)
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
 .quad 17
 .quad 0
 .quad node_1
node_1:
 .quad 133
 .quad node_2
 .quad node_4
node_2:
 .quad 33
 .quad 0
 .quad node_3
node_3:
 .quad 126
 .quad node_5
 .quad 0
node_4:
 .quad 185
 .quad 0
 .quad new_node
node_5:
 .quad 93
 .quad 0
 .quad 0
new_node:
 .quad 93
 .quad 0
 .quad 0

