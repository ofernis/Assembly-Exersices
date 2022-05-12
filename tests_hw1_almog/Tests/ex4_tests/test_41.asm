
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                           ____401____   
#                          /           \  
#                        _251_       _474 
#                       /     \     /     
#        ______________204   359   458    
#       /                                 
#    __90_                                
#   /     \                               
#  67_   112______                        
#     \           \                       
#    78        __147_                     
#             /      \                    
#           |145|   157                  

test_start:
    
    cmpq $401, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_3, (node_0+16)
    jne bad_exit

    cmpq $251, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $204, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $474, (node_3)
    jne bad_exit
    cmpq $node_11, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $359, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $90, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $112, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $67, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_9, (node_7+16)
    jne bad_exit

    cmpq $147, (node_8)
    jne bad_exit
    cmpq $new_node, (node_8+8)
    jne bad_exit
    cmpq $node_10, (node_8+16)
    jne bad_exit

    cmpq $78, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $157, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $458, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $458, (new_node)
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
 .quad 401
 .quad node_1
 .quad node_3
node_1:
 .quad 251
 .quad node_2
 .quad node_4
node_2:
 .quad 204
 .quad node_5
 .quad 0
node_3:
 .quad 474
 .quad node_11
 .quad 0
node_4:
 .quad 359
 .quad 0
 .quad 0
node_5:
 .quad 90
 .quad node_7
 .quad node_6
node_6:
 .quad 112
 .quad 0
 .quad node_8
node_7:
 .quad 67
 .quad 0
 .quad node_9
node_8:
 .quad 147
 .quad new_node
 .quad node_10
node_9:
 .quad 78
 .quad 0
 .quad 0
node_10:
 .quad 157
 .quad 0
 .quad 0
node_11:
 .quad 458
 .quad 0
 .quad 0
new_node:
 .quad 458
 .quad 0
 .quad 0

