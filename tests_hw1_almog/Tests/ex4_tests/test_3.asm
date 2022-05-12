
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                 ______________________441 
#                /                          
#   ____________185_______                  
#  /                      \                 
#  7__                  _226____            
#     \                /        \           
#    108______       _219     _329____      
#   /         \     /        /        \     
#   8      __141   194      269     _433    
#         /                        /        
#       |135|                     357      

test_start:
    
    cmpq $441, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $185, (node_1)
    jne bad_exit
    cmpq $node_7, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $226, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $219, (node_3)
    jne bad_exit
    cmpq $node_10, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $329, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $269, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $433, (node_6)
    jne bad_exit
    cmpq $node_12, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $7, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $108, (node_8)
    jne bad_exit
    cmpq $node_11, (node_8+8)
    jne bad_exit
    cmpq $node_9, (node_8+16)
    jne bad_exit

    cmpq $141, (node_9)
    jne bad_exit
    cmpq $new_node, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $194, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $8, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $357, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $357, (new_node)
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
 .quad 441
 .quad node_1
 .quad 0
node_1:
 .quad 185
 .quad node_7
 .quad node_2
node_2:
 .quad 226
 .quad node_3
 .quad node_4
node_3:
 .quad 219
 .quad node_10
 .quad 0
node_4:
 .quad 329
 .quad node_5
 .quad node_6
node_5:
 .quad 269
 .quad 0
 .quad 0
node_6:
 .quad 433
 .quad node_12
 .quad 0
node_7:
 .quad 7
 .quad 0
 .quad node_8
node_8:
 .quad 108
 .quad node_11
 .quad node_9
node_9:
 .quad 141
 .quad new_node
 .quad 0
node_10:
 .quad 194
 .quad 0
 .quad 0
node_11:
 .quad 8
 .quad 0
 .quad 0
node_12:
 .quad 357
 .quad 0
 .quad 0
new_node:
 .quad 357
 .quad 0
 .quad 0

