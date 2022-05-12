
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    73_______________________               
#   /                         \              
#  11      __________________357_______      
#         /                            \     
#        93_                         _490_   
#       /   \                       /     \  
#      85  185_                   _446   496 
#              \                 /           
#             189__________     444          
#                          \                 
#                  _______336                
#                 /                          
#                195____                     
#                       \                    
#                     _268                   
#                    /                       
#                   219                     

test_start:
    
    cmpq $73, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $357, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $11, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $490, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_12, (node_3+16)
    jne bad_exit

    cmpq $446, (node_4)
    jne bad_exit
    cmpq $node_14, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $93, (node_5)
    jne bad_exit
    cmpq $node_10, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $185, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $189, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $336, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $195, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_11, (node_9+16)
    jne bad_exit

    cmpq $85, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $268, (node_11)
    jne bad_exit
    cmpq $node_13, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $496, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $219, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $444, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $444, (new_node)
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
 .quad 73
 .quad node_2
 .quad node_1
node_1:
 .quad 357
 .quad node_5
 .quad node_3
node_2:
 .quad 11
 .quad 0
 .quad 0
node_3:
 .quad 490
 .quad node_4
 .quad node_12
node_4:
 .quad 446
 .quad node_14
 .quad 0
node_5:
 .quad 93
 .quad node_10
 .quad node_6
node_6:
 .quad 185
 .quad 0
 .quad node_7
node_7:
 .quad 189
 .quad 0
 .quad node_8
node_8:
 .quad 336
 .quad node_9
 .quad 0
node_9:
 .quad 195
 .quad 0
 .quad node_11
node_10:
 .quad 85
 .quad 0
 .quad 0
node_11:
 .quad 268
 .quad node_13
 .quad 0
node_12:
 .quad 496
 .quad 0
 .quad 0
node_13:
 .quad 219
 .quad 0
 .quad 0
node_14:
 .quad 444
 .quad 0
 .quad 0
new_node:
 .quad 444
 .quad 0
 .quad 0

