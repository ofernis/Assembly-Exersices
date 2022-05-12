
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#            _____________________308_______            
#           /                               \           
#      ____149_                           _424_______   
#     /        \                         /           \  
#    39___    163______                _370        _491 
#   /     \            \              /           /     
#  31    85         __173_           340        _490    
#       /          /      \                    /        
#      83        |165|   175____              448       
#                               \                       
#                             _279                      
#                            /                          
#                           226                        

test_start:
    
    cmpq $308, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_6, (node_0+16)
    jne bad_exit

    cmpq $149, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $163, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $173, (node_3)
    jne bad_exit
    cmpq $new_node, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $39, (node_4)
    jne bad_exit
    cmpq $node_12, (node_4+8)
    jne bad_exit
    cmpq $node_10, (node_4+16)
    jne bad_exit

    cmpq $175, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $424, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit
    cmpq $node_9, (node_6+16)
    jne bad_exit

    cmpq $279, (node_7)
    jne bad_exit
    cmpq $node_11, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $370, (node_8)
    jne bad_exit
    cmpq $node_13, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $491, (node_9)
    jne bad_exit
    cmpq $node_14, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $85, (node_10)
    jne bad_exit
    cmpq $node_15, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $226, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $31, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $340, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $490, (node_14)
    jne bad_exit
    cmpq $node_16, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $83, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $448, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $448, (new_node)
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
 .quad 308
 .quad node_1
 .quad node_6
node_1:
 .quad 149
 .quad node_4
 .quad node_2
node_2:
 .quad 163
 .quad 0
 .quad node_3
node_3:
 .quad 173
 .quad new_node
 .quad node_5
node_4:
 .quad 39
 .quad node_12
 .quad node_10
node_5:
 .quad 175
 .quad 0
 .quad node_7
node_6:
 .quad 424
 .quad node_8
 .quad node_9
node_7:
 .quad 279
 .quad node_11
 .quad 0
node_8:
 .quad 370
 .quad node_13
 .quad 0
node_9:
 .quad 491
 .quad node_14
 .quad 0
node_10:
 .quad 85
 .quad node_15
 .quad 0
node_11:
 .quad 226
 .quad 0
 .quad 0
node_12:
 .quad 31
 .quad 0
 .quad 0
node_13:
 .quad 340
 .quad 0
 .quad 0
node_14:
 .quad 490
 .quad node_16
 .quad 0
node_15:
 .quad 83
 .quad 0
 .quad 0
node_16:
 .quad 448
 .quad 0
 .quad 0
new_node:
 .quad 448
 .quad 0
 .quad 0

