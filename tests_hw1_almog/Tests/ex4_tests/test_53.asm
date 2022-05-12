
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      _________________279_         
#     /                     \        
#    32_______             337____   
#   /         \                   \  
#  15        134_               _490 
#           /    \             /     
#        __81   136__         461    
#       /            \               
#      36_         |257|             
#         \                          
#        50                         

test_start:
    
    cmpq $279, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_4, (node_0+16)
    jne bad_exit

    cmpq $32, (node_1)
    jne bad_exit
    cmpq $node_10, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $134, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $136, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $new_node, (node_3+16)
    jne bad_exit

    cmpq $337, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $81, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $490, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $461, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $36, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_9, (node_8+16)
    jne bad_exit

    cmpq $50, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $15, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $15, (new_node)
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
 .quad 279
 .quad node_1
 .quad node_4
node_1:
 .quad 32
 .quad node_10
 .quad node_2
node_2:
 .quad 134
 .quad node_5
 .quad node_3
node_3:
 .quad 136
 .quad 0
 .quad new_node
node_4:
 .quad 337
 .quad 0
 .quad node_6
node_5:
 .quad 81
 .quad node_8
 .quad 0
node_6:
 .quad 490
 .quad node_7
 .quad 0
node_7:
 .quad 461
 .quad 0
 .quad 0
node_8:
 .quad 36
 .quad 0
 .quad node_9
node_9:
 .quad 50
 .quad 0
 .quad 0
node_10:
 .quad 15
 .quad 0
 .quad 0
new_node:
 .quad 15
 .quad 0
 .quad 0

