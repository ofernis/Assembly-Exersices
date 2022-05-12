
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#        ____________________________437_______   
#       /                                      \  
#    __79______________                   ____472 
#   /                  \                 /        
#  10_          ______250_              453_      
#     \        /          \                 \     
#    11    ___157__      352_______        471    
#         /        \               \              
#        96_     |196|        ____436             
#           \                /                    
#          122              370_                  
#                               \                 
#                              376               

test_start:
    
    cmpq $437, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $79, (node_1)
    jne bad_exit
    cmpq $node_7, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $472, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $250, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $352, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_9, (node_4+16)
    jne bad_exit

    cmpq $453, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_8, (node_5+16)
    jne bad_exit

    cmpq $157, (node_6)
    jne bad_exit
    cmpq $node_11, (node_6+8)
    jne bad_exit
    cmpq $new_node, (node_6+16)
    jne bad_exit

    cmpq $10, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_10, (node_7+16)
    jne bad_exit

    cmpq $471, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $436, (node_9)
    jne bad_exit
    cmpq $node_12, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $11, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $96, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_14, (node_11+16)
    jne bad_exit

    cmpq $370, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $node_13, (node_12+16)
    jne bad_exit

    cmpq $376, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $122, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $122, (new_node)
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
 .quad 437
 .quad node_1
 .quad node_2
node_1:
 .quad 79
 .quad node_7
 .quad node_3
node_2:
 .quad 472
 .quad node_5
 .quad 0
node_3:
 .quad 250
 .quad node_6
 .quad node_4
node_4:
 .quad 352
 .quad 0
 .quad node_9
node_5:
 .quad 453
 .quad 0
 .quad node_8
node_6:
 .quad 157
 .quad node_11
 .quad new_node
node_7:
 .quad 10
 .quad 0
 .quad node_10
node_8:
 .quad 471
 .quad 0
 .quad 0
node_9:
 .quad 436
 .quad node_12
 .quad 0
node_10:
 .quad 11
 .quad 0
 .quad 0
node_11:
 .quad 96
 .quad 0
 .quad node_14
node_12:
 .quad 370
 .quad 0
 .quad node_13
node_13:
 .quad 376
 .quad 0
 .quad 0
node_14:
 .quad 122
 .quad 0
 .quad 0
new_node:
 .quad 122
 .quad 0
 .quad 0

