
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  11__________________________________________         
#                                              \        
#                                    _________439____   
#                                   /                \  
#        __________________________359______       _473 
#       /                                   \     /     
#      60__________________              __384   466    
#     /                    \            /               
#    23         __________321____     |383|             
#              /                 \                      
#          ___230____          _354                     
#         /          \        /                         
#        78_       _273_     349                        
#           \     /     \                               
#          102   233   286                             

test_start:
    
    cmpq $11, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $439, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $473, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $466, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $359, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $node_14, (node_4+16)
    jne bad_exit

    cmpq $60, (node_5)
    jne bad_exit
    cmpq $node_15, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $321, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $node_10, (node_6+16)
    jne bad_exit

    cmpq $230, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $node_11, (node_7+16)
    jne bad_exit

    cmpq $78, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_9, (node_8+16)
    jne bad_exit

    cmpq $102, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $354, (node_10)
    jne bad_exit
    cmpq $node_12, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $273, (node_11)
    jne bad_exit
    cmpq $node_16, (node_11+8)
    jne bad_exit
    cmpq $node_13, (node_11+16)
    jne bad_exit

    cmpq $349, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $286, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $384, (node_14)
    jne bad_exit
    cmpq $new_node, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $23, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $233, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $233, (new_node)
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
 .quad 11
 .quad 0
 .quad node_1
node_1:
 .quad 439
 .quad node_4
 .quad node_2
node_2:
 .quad 473
 .quad node_3
 .quad 0
node_3:
 .quad 466
 .quad 0
 .quad 0
node_4:
 .quad 359
 .quad node_5
 .quad node_14
node_5:
 .quad 60
 .quad node_15
 .quad node_6
node_6:
 .quad 321
 .quad node_7
 .quad node_10
node_7:
 .quad 230
 .quad node_8
 .quad node_11
node_8:
 .quad 78
 .quad 0
 .quad node_9
node_9:
 .quad 102
 .quad 0
 .quad 0
node_10:
 .quad 354
 .quad node_12
 .quad 0
node_11:
 .quad 273
 .quad node_16
 .quad node_13
node_12:
 .quad 349
 .quad 0
 .quad 0
node_13:
 .quad 286
 .quad 0
 .quad 0
node_14:
 .quad 384
 .quad new_node
 .quad 0
node_15:
 .quad 23
 .quad 0
 .quad 0
node_16:
 .quad 233
 .quad 0
 .quad 0
new_node:
 .quad 233
 .quad 0
 .quad 0

