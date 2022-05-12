
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  47______                       
#          \                      
#      ___227_                    
#     /       \                   
#    62_     234______            
#       \             \           
#      109         __257_         
#                 /      \        
#               |255|   263_      
#                           \     
#                          344_   
#                              \  
#                             400

test_start:
    
    cmpq $47, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $227, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $234, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $257, (node_3)
    jne bad_exit
    cmpq $new_node, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $263, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $344, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_9, (node_5+16)
    jne bad_exit

    cmpq $62, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $109, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $400, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $400, (new_node)
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
 .quad 47
 .quad 0
 .quad node_1
node_1:
 .quad 227
 .quad node_6
 .quad node_2
node_2:
 .quad 234
 .quad 0
 .quad node_3
node_3:
 .quad 257
 .quad new_node
 .quad node_4
node_4:
 .quad 263
 .quad 0
 .quad node_5
node_5:
 .quad 344
 .quad 0
 .quad node_9
node_6:
 .quad 62
 .quad 0
 .quad node_8
node_8:
 .quad 109
 .quad 0
 .quad 0
node_9:
 .quad 400
 .quad 0
 .quad 0
new_node:
 .quad 400
 .quad 0
 .quad 0

