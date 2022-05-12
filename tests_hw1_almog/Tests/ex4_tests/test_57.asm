
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _____________394_______   
#   /                       \  
#  51___________          _481 
#               \        /     
#             _314     _457    
#            /        /        
#      _____266      435       
#     /                        
#    72___                     
#         \                    
#        114                   
#       /                      
#      73                     

test_start:
    
    cmpq $394, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $51, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $481, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $314, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $457, (node_4)
    jne bad_exit
    cmpq $node_8, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $266, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $72, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $114, (node_7)
    jne bad_exit
    cmpq $node_9, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $435, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $73, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $73, (new_node)
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
 .quad 394
 .quad node_1
 .quad node_2
node_1:
 .quad 51
 .quad 0
 .quad node_3
node_2:
 .quad 481
 .quad node_4
 .quad 0
node_3:
 .quad 314
 .quad node_5
 .quad 0
node_4:
 .quad 457
 .quad node_8
 .quad 0
node_5:
 .quad 266
 .quad node_6
 .quad 0
node_6:
 .quad 72
 .quad 0
 .quad node_7
node_7:
 .quad 114
 .quad node_9
 .quad 0
node_8:
 .quad 435
 .quad 0
 .quad 0
node_9:
 .quad 73
 .quad 0
 .quad 0
new_node:
 .quad 73
 .quad 0
 .quad 0

