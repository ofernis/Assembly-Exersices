
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    36_____________         
#   /               \        
#  35    __________327_      
#       /              \     
#      106_           408_   
#          \              \  
#         243_           470 
#             \              
#            311_            
#                \           
#               312         

test_start:
    
    cmpq $36, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $327, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $35, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $106, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_6, (node_3+16)
    jne bad_exit

    cmpq $408, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $470, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $243, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $311, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $312, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $312, (new_node)
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
 .quad 36
 .quad node_2
 .quad node_1
node_1:
 .quad 327
 .quad node_3
 .quad node_4
node_2:
 .quad 35
 .quad 0
 .quad 0
node_3:
 .quad 106
 .quad 0
 .quad node_6
node_4:
 .quad 408
 .quad 0
 .quad node_5
node_5:
 .quad 470
 .quad 0
 .quad 0
node_6:
 .quad 243
 .quad 0
 .quad node_7
node_7:
 .quad 311
 .quad 0
 .quad node_8
node_8:
 .quad 312
 .quad 0
 .quad 0
new_node:
 .quad 312
 .quad 0
 .quad 0

