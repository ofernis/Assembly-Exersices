
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  140________________      
#                     \     
#          __________388_   
#         /              \  
#       _234_______     494 
#      /           \        
#     205     ____378       
#            /              
#           325_            
#               \           
#              329         

test_start:
    
    cmpq $140, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $388, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $234, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_5, (node_2+16)
    jne bad_exit

    cmpq $205, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $494, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $378, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $325, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $329, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $329, (new_node)
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
 .quad 140
 .quad 0
 .quad node_1
node_1:
 .quad 388
 .quad node_2
 .quad node_4
node_2:
 .quad 234
 .quad node_3
 .quad node_5
node_3:
 .quad 205
 .quad 0
 .quad 0
node_4:
 .quad 494
 .quad 0
 .quad 0
node_5:
 .quad 378
 .quad node_6
 .quad 0
node_6:
 .quad 325
 .quad 0
 .quad node_7
node_7:
 .quad 329
 .quad 0
 .quad 0
new_node:
 .quad 329
 .quad 0
 .quad 0

