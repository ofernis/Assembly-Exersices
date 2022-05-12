
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      ___124____                       
#     /          \                      
#    86_       _249_______              
#   /   \     /           \             
#  79  107   156        _422_________   
#                      /             \  
#                    _393          _474 
#                   /             /     
#                  349         __435    
#                             /         
#                           |429|      

test_start:
    
    cmpq $124, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $86, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_7, (node_1+16)
    jne bad_exit

    cmpq $249, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $422, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $156, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $474, (node_5)
    jne bad_exit
    cmpq $node_9, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $79, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $107, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $393, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $435, (node_9)
    jne bad_exit
    cmpq $new_node, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $349, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $349, (new_node)
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
 .quad 124
 .quad node_1
 .quad node_2
node_1:
 .quad 86
 .quad node_6
 .quad node_7
node_2:
 .quad 249
 .quad node_4
 .quad node_3
node_3:
 .quad 422
 .quad node_8
 .quad node_5
node_4:
 .quad 156
 .quad 0
 .quad 0
node_5:
 .quad 474
 .quad node_9
 .quad 0
node_6:
 .quad 79
 .quad 0
 .quad 0
node_7:
 .quad 107
 .quad 0
 .quad 0
node_8:
 .quad 393
 .quad node_10
 .quad 0
node_9:
 .quad 435
 .quad new_node
 .quad 0
node_10:
 .quad 349
 .quad 0
 .quad 0
new_node:
 .quad 349
 .quad 0
 .quad 0

