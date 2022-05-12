
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _______________158_           
#   /                   \          
#  58_____________     169_        
#                 \        \       
#            ____157      179__    
#           /                  \   
#         _139_              |295| 
#        /     \                   
#      _126   143                  
#     /                            
#    121                          

test_start:
    
    cmpq $158, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_4, (node_0+16)
    jne bad_exit

    cmpq $58, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $157, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $139, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $169, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $143, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $126, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $179, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $new_node, (node_7+16)
    jne bad_exit

    cmpq $121, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $121, (new_node)
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
 .quad 158
 .quad node_1
 .quad node_4
node_1:
 .quad 58
 .quad 0
 .quad node_2
node_2:
 .quad 157
 .quad node_3
 .quad 0
node_3:
 .quad 139
 .quad node_6
 .quad node_5
node_4:
 .quad 169
 .quad 0
 .quad node_7
node_5:
 .quad 143
 .quad 0
 .quad 0
node_6:
 .quad 126
 .quad node_8
 .quad 0
node_7:
 .quad 179
 .quad 0
 .quad new_node
node_8:
 .quad 121
 .quad 0
 .quad 0
new_node:
 .quad 121
 .quad 0
 .quad 0

