
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _______________422_   
#   /                   \  
#  81__________        448 
#              \           
#      _______349_         
#     /           \        
#    144____     386       
#           \              
#         _265             
#        /                 
#       155               

test_start:
    
    cmpq $422, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_7, (node_0+16)
    jne bad_exit

    cmpq $81, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $349, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $144, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $386, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $265, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $155, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $448, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $448, (new_node)
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
 .quad 422
 .quad node_1
 .quad node_7
node_1:
 .quad 81
 .quad 0
 .quad node_2
node_2:
 .quad 349
 .quad node_3
 .quad node_4
node_3:
 .quad 144
 .quad 0
 .quad node_5
node_4:
 .quad 386
 .quad 0
 .quad 0
node_5:
 .quad 265
 .quad node_6
 .quad 0
node_6:
 .quad 155
 .quad 0
 .quad 0
node_7:
 .quad 448
 .quad 0
 .quad 0
new_node:
 .quad 448
 .quad 0
 .quad 0

