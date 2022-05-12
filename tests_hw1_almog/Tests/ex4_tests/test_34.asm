
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#              ____219____________               
#             /                   \              
#     _______202_            ____323_______      
#    /           \          /              \     
#   106____     212      __276_          _387_   
#  /       \            /      \        /     \  
#  9     _201         |270|   307     _340   445 
#       /                            /           
#      174                          328         

test_start:
    
    cmpq $219, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $323, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $387, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_13, (node_2+16)
    jne bad_exit

    cmpq $202, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit
    cmpq $node_10, (node_3+16)
    jne bad_exit

    cmpq $340, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $276, (node_5)
    jne bad_exit
    cmpq $new_node, (node_5+8)
    jne bad_exit
    cmpq $node_9, (node_5+16)
    jne bad_exit

    cmpq $328, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $106, (node_8)
    jne bad_exit
    cmpq $node_11, (node_8+8)
    jne bad_exit
    cmpq $node_12, (node_8+16)
    jne bad_exit

    cmpq $307, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $212, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $9, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $201, (node_12)
    jne bad_exit
    cmpq $node_14, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $445, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $174, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $174, (new_node)
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
 .quad 219
 .quad node_3
 .quad node_1
node_1:
 .quad 323
 .quad node_5
 .quad node_2
node_2:
 .quad 387
 .quad node_4
 .quad node_13
node_3:
 .quad 202
 .quad node_8
 .quad node_10
node_4:
 .quad 340
 .quad node_7
 .quad 0
node_5:
 .quad 276
 .quad new_node
 .quad node_9
node_7:
 .quad 328
 .quad 0
 .quad 0
node_8:
 .quad 106
 .quad node_11
 .quad node_12
node_9:
 .quad 307
 .quad 0
 .quad 0
node_10:
 .quad 212
 .quad 0
 .quad 0
node_11:
 .quad 9
 .quad 0
 .quad 0
node_12:
 .quad 201
 .quad node_14
 .quad 0
node_13:
 .quad 445
 .quad 0
 .quad 0
node_14:
 .quad 174
 .quad 0
 .quad 0
new_node:
 .quad 174
 .quad 0
 .quad 0

