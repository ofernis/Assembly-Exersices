
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#              ____________________________488 
#             /                                
#        ____200__________                     
#       /                 \                    
#      104_          ____233_                  
#     /    \        /        \                 
#    81   128     _212_     246__________      
#   /            /     \                 \     
#  31           201   228        _______447    
#                               /              
#                              336____         
#                                     \        
#                                   _420       
#                                  /           
#                                 360         

test_start:
    
    cmpq $488, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $200, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $104, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit
    cmpq $node_11, (node_2+16)
    jne bad_exit

    cmpq $233, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $212, (node_4)
    jne bad_exit
    cmpq $node_8, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $246, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $228, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $447, (node_7)
    jne bad_exit
    cmpq $node_10, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $201, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $81, (node_9)
    jne bad_exit
    cmpq $node_12, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $336, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $node_13, (node_10+16)
    jne bad_exit

    cmpq $128, (node_11)
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

    cmpq $420, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $360, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $360, (new_node)
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
 .quad 488
 .quad node_1
 .quad 0
node_1:
 .quad 200
 .quad node_2
 .quad node_3
node_2:
 .quad 104
 .quad node_9
 .quad node_11
node_3:
 .quad 233
 .quad node_4
 .quad node_5
node_4:
 .quad 212
 .quad node_8
 .quad node_6
node_5:
 .quad 246
 .quad 0
 .quad node_7
node_6:
 .quad 228
 .quad 0
 .quad 0
node_7:
 .quad 447
 .quad node_10
 .quad 0
node_8:
 .quad 201
 .quad 0
 .quad 0
node_9:
 .quad 81
 .quad node_12
 .quad 0
node_10:
 .quad 336
 .quad 0
 .quad node_13
node_11:
 .quad 128
 .quad 0
 .quad 0
node_12:
 .quad 31
 .quad 0
 .quad 0
node_13:
 .quad 420
 .quad node_14
 .quad 0
node_14:
 .quad 360
 .quad 0
 .quad 0
new_node:
 .quad 360
 .quad 0
 .quad 0

