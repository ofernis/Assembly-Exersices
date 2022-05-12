
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#               _____________277_______           
#              /                       \          
#          ___196_______          ____437______   
#         /             \        /             \  
#        80_          _255_     327_        __484 
#       /   \        /     \        \      /      
#    __46  104     _212   267      398   |446|    
#   /             /                               
#  23_           209                              
#     \                                           
#    45                                          

test_start:
    
    cmpq $277, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $196, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $437, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_14, (node_2+16)
    jne bad_exit

    cmpq $255, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit
    cmpq $node_12, (node_3+16)
    jne bad_exit

    cmpq $327, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $80, (node_5)
    jne bad_exit
    cmpq $node_9, (node_5+8)
    jne bad_exit
    cmpq $node_10, (node_5+16)
    jne bad_exit

    cmpq $398, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $212, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $209, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $46, (node_9)
    jne bad_exit
    cmpq $node_11, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $104, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $23, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_13, (node_11+16)
    jne bad_exit

    cmpq $267, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $45, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $484, (node_14)
    jne bad_exit
    cmpq $new_node, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $484, (new_node)
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
 .quad 277
 .quad node_1
 .quad node_2
node_1:
 .quad 196
 .quad node_5
 .quad node_3
node_2:
 .quad 437
 .quad node_4
 .quad node_14
node_3:
 .quad 255
 .quad node_7
 .quad node_12
node_4:
 .quad 327
 .quad 0
 .quad node_6
node_5:
 .quad 80
 .quad node_9
 .quad node_10
node_6:
 .quad 398
 .quad 0
 .quad 0
node_7:
 .quad 212
 .quad node_8
 .quad 0
node_8:
 .quad 209
 .quad 0
 .quad 0
node_9:
 .quad 46
 .quad node_11
 .quad 0
node_10:
 .quad 104
 .quad 0
 .quad 0
node_11:
 .quad 23
 .quad 0
 .quad node_13
node_12:
 .quad 267
 .quad 0
 .quad 0
node_13:
 .quad 45
 .quad 0
 .quad 0
node_14:
 .quad 484
 .quad new_node
 .quad 0
new_node:
 .quad 484
 .quad 0
 .quad 0

