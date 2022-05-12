
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#     121_____________            
#    /                \           
#   11        _______336_         
#  /         /           \        
#  8       _201_        340____   
#         /     \              \  
#        141   296_          _379 
#                  \        /     
#                 297      343   

test_start:
    
    cmpq $121, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $11, (node_1)
    jne bad_exit
    cmpq $node_9, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $336, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $201, (node_3)
    jne bad_exit
    cmpq $node_10, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $340, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $296, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $297, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $379, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $343, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $8, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $141, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $141, (new_node)
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
 .quad 121
 .quad node_1
 .quad node_2
node_1:
 .quad 11
 .quad node_9
 .quad 0
node_2:
 .quad 336
 .quad node_3
 .quad node_4
node_3:
 .quad 201
 .quad node_10
 .quad node_5
node_4:
 .quad 340
 .quad 0
 .quad node_7
node_5:
 .quad 296
 .quad 0
 .quad node_6
node_6:
 .quad 297
 .quad 0
 .quad 0
node_7:
 .quad 379
 .quad node_8
 .quad 0
node_8:
 .quad 343
 .quad 0
 .quad 0
node_9:
 .quad 8
 .quad 0
 .quad 0
node_10:
 .quad 141
 .quad 0
 .quad 0
new_node:
 .quad 141
 .quad 0
 .quad 0

