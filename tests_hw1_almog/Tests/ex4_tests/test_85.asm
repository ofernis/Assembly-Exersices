
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#          _______________________________463 
#         /                                   
#    ____115______________________            
#   /                             \           
#  52__                      ____341____      
#      \                    /           \     
#    |92|                 _328_       _412    
#                        /     \     /        
#             __________267   339   356       
#            /                                
#           136____                           
#                  \                          
#                _261_                        
#               /     \                       
#              194   262                     

test_start:
    
    cmpq $463, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $115, (node_1)
    jne bad_exit
    cmpq $node_9, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $341, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_11, (node_2+16)
    jne bad_exit

    cmpq $328, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $339, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $267, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $136, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $261, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $node_10, (node_7+16)
    jne bad_exit

    cmpq $194, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $52, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $new_node, (node_9+16)
    jne bad_exit

    cmpq $262, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $412, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $356, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $356, (new_node)
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
 .quad 463
 .quad node_1
 .quad 0
node_1:
 .quad 115
 .quad node_9
 .quad node_2
node_2:
 .quad 341
 .quad node_3
 .quad node_11
node_3:
 .quad 328
 .quad node_5
 .quad node_4
node_4:
 .quad 339
 .quad 0
 .quad 0
node_5:
 .quad 267
 .quad node_6
 .quad 0
node_6:
 .quad 136
 .quad 0
 .quad node_7
node_7:
 .quad 261
 .quad node_8
 .quad node_10
node_8:
 .quad 194
 .quad 0
 .quad 0
node_9:
 .quad 52
 .quad 0
 .quad new_node
node_10:
 .quad 262
 .quad 0
 .quad 0
node_11:
 .quad 412
 .quad node_12
 .quad 0
node_12:
 .quad 356
 .quad 0
 .quad 0
new_node:
 .quad 356
 .quad 0
 .quad 0

