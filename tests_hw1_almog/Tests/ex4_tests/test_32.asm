
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                           ____432_         
#                          /        \        
#      ___________________225_     482_      
#     /                       \        \     
#    80___                   377      490_   
#   /     \                               \  
#  13    143_________                    500 
#       /            \                       
#      83          _167_                     
#                 /     \                    
#              __155   222                   
#             /                              
#           |146|                           

test_start:
    
    cmpq $432, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_5, (node_0+16)
    jne bad_exit

    cmpq $225, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_8, (node_1+16)
    jne bad_exit

    cmpq $80, (node_2)
    jne bad_exit
    cmpq $node_7, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $143, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_9, (node_3+16)
    jne bad_exit

    cmpq $83, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $482, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $490, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_12, (node_6+16)
    jne bad_exit

    cmpq $13, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $377, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $167, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit
    cmpq $node_11, (node_9+16)
    jne bad_exit

    cmpq $155, (node_10)
    jne bad_exit
    cmpq $new_node, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $222, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $500, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $500, (new_node)
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
 .quad 432
 .quad node_1
 .quad node_5
node_1:
 .quad 225
 .quad node_2
 .quad node_8
node_2:
 .quad 80
 .quad node_7
 .quad node_3
node_3:
 .quad 143
 .quad node_4
 .quad node_9
node_4:
 .quad 83
 .quad 0
 .quad 0
node_5:
 .quad 482
 .quad 0
 .quad node_6
node_6:
 .quad 490
 .quad 0
 .quad node_12
node_7:
 .quad 13
 .quad 0
 .quad 0
node_8:
 .quad 377
 .quad 0
 .quad 0
node_9:
 .quad 167
 .quad node_10
 .quad node_11
node_10:
 .quad 155
 .quad new_node
 .quad 0
node_11:
 .quad 222
 .quad 0
 .quad 0
node_12:
 .quad 500
 .quad 0
 .quad 0
new_node:
 .quad 500
 .quad 0
 .quad 0

