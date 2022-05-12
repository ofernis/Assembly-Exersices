
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    127_                          
#   /    \                         
#  64   138_                       
#           \                      
#          155__________           
#                       \          
#               _______238______   
#              /                \  
#             180_           __400 
#                 \         /      
#                189_     |341|    
#                    \             
#                   211           

test_start:
    
    cmpq $127, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $64, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $138, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $155, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $238, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $180, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $189, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $400, (node_7)
    jne bad_exit
    cmpq $new_node, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $211, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $211, (new_node)
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
 .quad 127
 .quad node_1
 .quad node_2
node_1:
 .quad 64
 .quad 0
 .quad 0
node_2:
 .quad 138
 .quad 0
 .quad node_3
node_3:
 .quad 155
 .quad 0
 .quad node_4
node_4:
 .quad 238
 .quad node_5
 .quad node_7
node_5:
 .quad 180
 .quad 0
 .quad node_6
node_6:
 .quad 189
 .quad 0
 .quad node_8
node_7:
 .quad 400
 .quad new_node
 .quad 0
node_8:
 .quad 211
 .quad 0
 .quad 0
new_node:
 .quad 211
 .quad 0
 .quad 0

