
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#       _________________________488__    
#      /                              \   
#    _127________________           |496| 
#   /                    \                
#  121              ____352_              
#                  /        \             
#             ____271_     383_           
#            /        \        \          
#          _150_     322      484         
#         /     \                         
#        136   199                       

test_start:
    
    cmpq $488, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $new_node, (node_0+16)
    jne bad_exit

    cmpq $127, (node_1)
    jne bad_exit
    cmpq $node_9, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $352, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $271, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_7, (node_3+16)
    jne bad_exit

    cmpq $383, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_8, (node_4+16)
    jne bad_exit

    cmpq $150, (node_5)
    jne bad_exit
    cmpq $node_10, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $199, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $322, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $484, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $121, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $136, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $136, (new_node)
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
 .quad new_node
node_1:
 .quad 127
 .quad node_9
 .quad node_2
node_2:
 .quad 352
 .quad node_3
 .quad node_4
node_3:
 .quad 271
 .quad node_5
 .quad node_7
node_4:
 .quad 383
 .quad 0
 .quad node_8
node_5:
 .quad 150
 .quad node_10
 .quad node_6
node_6:
 .quad 199
 .quad 0
 .quad 0
node_7:
 .quad 322
 .quad 0
 .quad 0
node_8:
 .quad 484
 .quad 0
 .quad 0
node_9:
 .quad 121
 .quad 0
 .quad 0
node_10:
 .quad 136
 .quad 0
 .quad 0
new_node:
 .quad 136
 .quad 0
 .quad 0

