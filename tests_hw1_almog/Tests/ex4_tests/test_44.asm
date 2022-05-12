
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      _________________261____         
#     /                        \        
#    62_                     _387_      
#   /   \                   /     \     
#  55  69_____________     300   390_   
#                     \              \  
#          __________222            462 
#         /                             
#        82_____                        
#               \                       
#             _134_                     
#            /     \                    
#          |86|   207                  

test_start:
    
    cmpq $261, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $62, (node_1)
    jne bad_exit
    cmpq $node_9, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $387, (node_2)
    jne bad_exit
    cmpq $node_11, (node_2+8)
    jne bad_exit
    cmpq $node_6, (node_2+16)
    jne bad_exit

    cmpq $69, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $222, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $82, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $390, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $134, (node_7)
    jne bad_exit
    cmpq $new_node, (node_7+8)
    jne bad_exit
    cmpq $node_10, (node_7+16)
    jne bad_exit

    cmpq $462, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $55, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $207, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $300, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $300, (new_node)
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
 .quad 261
 .quad node_1
 .quad node_2
node_1:
 .quad 62
 .quad node_9
 .quad node_3
node_2:
 .quad 387
 .quad node_11
 .quad node_6
node_3:
 .quad 69
 .quad 0
 .quad node_4
node_4:
 .quad 222
 .quad node_5
 .quad 0
node_5:
 .quad 82
 .quad 0
 .quad node_7
node_6:
 .quad 390
 .quad 0
 .quad node_8
node_7:
 .quad 134
 .quad new_node
 .quad node_10
node_8:
 .quad 462
 .quad 0
 .quad 0
node_9:
 .quad 55
 .quad 0
 .quad 0
node_10:
 .quad 207
 .quad 0
 .quad 0
node_11:
 .quad 300
 .quad 0
 .quad 0
new_node:
 .quad 300
 .quad 0
 .quad 0

