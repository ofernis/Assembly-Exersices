
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#           _234______            
#          /          \           
#    _____139      __269____      
#   /             /         \     
#  51___        |240|     _397_   
#       \                /     \  
#      120              385   419 
#     /                           
#    66                          

test_start:
    
    cmpq $234, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $269, (node_1)
    jne bad_exit
    cmpq $new_node, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $397, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_6, (node_2+16)
    jne bad_exit

    cmpq $139, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $385, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $51, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $419, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $120, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $66, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $66, (new_node)
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
 .quad 234
 .quad node_3
 .quad node_1
node_1:
 .quad 269
 .quad new_node
 .quad node_2
node_2:
 .quad 397
 .quad node_4
 .quad node_6
node_3:
 .quad 139
 .quad node_5
 .quad 0
node_4:
 .quad 385
 .quad 0
 .quad 0
node_5:
 .quad 51
 .quad 0
 .quad node_7
node_6:
 .quad 419
 .quad 0
 .quad 0
node_7:
 .quad 120
 .quad node_8
 .quad 0
node_8:
 .quad 66
 .quad 0
 .quad 0
new_node:
 .quad 66
 .quad 0
 .quad 0

