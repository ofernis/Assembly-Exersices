
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#           ______160_________      
#          /                  \     
#         77____       ______292_   
#        /      \     /          \  
#       68    _150   218__      482 
#      /     /            \         
#     52    139         |271|       
#    /                              
#   43                              
#  /                                
#  3                               

test_start:
    
    cmpq $160, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_3, (node_0+16)
    jne bad_exit

    cmpq $77, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_6, (node_1+16)
    jne bad_exit

    cmpq $68, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $292, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit
    cmpq $node_9, (node_3+16)
    jne bad_exit

    cmpq $52, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $43, (node_5)
    jne bad_exit
    cmpq $node_10, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $150, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $139, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $218, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $new_node, (node_8+16)
    jne bad_exit

    cmpq $482, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $3, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $3, (new_node)
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
 .quad 160
 .quad node_1
 .quad node_3
node_1:
 .quad 77
 .quad node_2
 .quad node_6
node_2:
 .quad 68
 .quad node_4
 .quad 0
node_3:
 .quad 292
 .quad node_8
 .quad node_9
node_4:
 .quad 52
 .quad node_5
 .quad 0
node_5:
 .quad 43
 .quad node_10
 .quad 0
node_6:
 .quad 150
 .quad node_7
 .quad 0
node_7:
 .quad 139
 .quad 0
 .quad 0
node_8:
 .quad 218
 .quad 0
 .quad new_node
node_9:
 .quad 482
 .quad 0
 .quad 0
node_10:
 .quad 3
 .quad 0
 .quad 0
new_node:
 .quad 3
 .quad 0
 .quad 0

