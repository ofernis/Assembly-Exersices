
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                        _253_______        
#                       /           \       
#               _______239        _374__    
#              /                 /      \   
#            _169____          _314   |418| 
#           /        \        /             
#    ______158     _224      298            
#   /             /                         
#  48_           170                        
#     \                                     
#    118_                                   
#        \                                  
#       156                                

test_start:
    
    cmpq $253, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_8, (node_0+16)
    jne bad_exit

    cmpq $239, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $169, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $224, (node_3)
    jne bad_exit
    cmpq $node_9, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $158, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $48, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $118, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_12, (node_7+16)
    jne bad_exit

    cmpq $374, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $new_node, (node_8+16)
    jne bad_exit

    cmpq $170, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $314, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $298, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $156, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $156, (new_node)
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
 .quad 253
 .quad node_1
 .quad node_8
node_1:
 .quad 239
 .quad node_2
 .quad 0
node_2:
 .quad 169
 .quad node_5
 .quad node_3
node_3:
 .quad 224
 .quad node_9
 .quad 0
node_5:
 .quad 158
 .quad node_6
 .quad 0
node_6:
 .quad 48
 .quad 0
 .quad node_7
node_7:
 .quad 118
 .quad 0
 .quad node_12
node_8:
 .quad 374
 .quad node_10
 .quad new_node
node_9:
 .quad 170
 .quad 0
 .quad 0
node_10:
 .quad 314
 .quad node_11
 .quad 0
node_11:
 .quad 298
 .quad 0
 .quad 0
node_12:
 .quad 156
 .quad 0
 .quad 0
new_node:
 .quad 156
 .quad 0
 .quad 0

