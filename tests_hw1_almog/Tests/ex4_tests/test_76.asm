
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    ____144__________                             
#   /                 \                            
#  46___      _______207__________                 
#       \    /                    \                
#      69   147____       _______308_              
#     /            \     /           \             
#    66          _202   220____     341_________   
#               /              \                \  
#              201           _272             _461 
#                           /                /     
#                          256            __459    
#                                        /         
#                                      |446|      

test_start:
    
    cmpq $144, (node_0)
    jne bad_exit
    cmpq $node_6, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $207, (node_1)
    jne bad_exit
    cmpq $node_7, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $308, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $220, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_9, (node_3+16)
    jne bad_exit

    cmpq $341, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $461, (node_5)
    jne bad_exit
    cmpq $node_12, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $46, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $147, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_11, (node_7+16)
    jne bad_exit

    cmpq $69, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $272, (node_9)
    jne bad_exit
    cmpq $node_14, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $66, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $202, (node_11)
    jne bad_exit
    cmpq $node_13, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $459, (node_12)
    jne bad_exit
    cmpq $new_node, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $201, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $256, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $256, (new_node)
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
 .quad 144
 .quad node_6
 .quad node_1
node_1:
 .quad 207
 .quad node_7
 .quad node_2
node_2:
 .quad 308
 .quad node_3
 .quad node_4
node_3:
 .quad 220
 .quad 0
 .quad node_9
node_4:
 .quad 341
 .quad 0
 .quad node_5
node_5:
 .quad 461
 .quad node_12
 .quad 0
node_6:
 .quad 46
 .quad 0
 .quad node_8
node_7:
 .quad 147
 .quad 0
 .quad node_11
node_8:
 .quad 69
 .quad node_10
 .quad 0
node_9:
 .quad 272
 .quad node_14
 .quad 0
node_10:
 .quad 66
 .quad 0
 .quad 0
node_11:
 .quad 202
 .quad node_13
 .quad 0
node_12:
 .quad 459
 .quad new_node
 .quad 0
node_13:
 .quad 201
 .quad 0
 .quad 0
node_14:
 .quad 256
 .quad 0
 .quad 0
new_node:
 .quad 256
 .quad 0
 .quad 0

