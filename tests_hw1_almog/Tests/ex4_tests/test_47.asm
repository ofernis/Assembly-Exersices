
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  70_____                  
#         \                 
#        218_               
#       /    \              
#      75   249__________   
#     /                  \  
#    72                _479 
#                     /     
#                ____444    
#               /           
#              327_         
#                  \        
#                 418      

test_start:
    
    cmpq $70, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $218, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $249, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $479, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $444, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $75, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $327, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $418, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $72, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $72, (new_node)
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
 .quad 70
 .quad 0
 .quad node_1
node_1:
 .quad 218
 .quad node_5
 .quad node_2
node_2:
 .quad 249
 .quad 0
 .quad node_3
node_3:
 .quad 479
 .quad node_4
 .quad 0
node_4:
 .quad 444
 .quad node_6
 .quad 0
node_5:
 .quad 75
 .quad node_8
 .quad 0
node_6:
 .quad 327
 .quad 0
 .quad node_7
node_7:
 .quad 418
 .quad 0
 .quad 0
node_8:
 .quad 72
 .quad 0
 .quad 0
new_node:
 .quad 72
 .quad 0
 .quad 0

