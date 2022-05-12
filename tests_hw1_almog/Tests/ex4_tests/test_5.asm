
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                    _437_   
#                   /     \  
#              ____382   466 
#             /              
#    ________233_            
#   /            \           
#  41_          328          
#     \                      
#    92_                     
#       \                    
#      216_                  
#          \                 
#         220               

test_start:
    
    cmpq $437, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_3, (node_0+16)
    jne bad_exit

    cmpq $382, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $233, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $466, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $328, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $41, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $92, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $216, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $220, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $220, (new_node)
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
 .quad 437
 .quad node_1
 .quad node_3
node_1:
 .quad 382
 .quad node_2
 .quad 0
node_2:
 .quad 233
 .quad node_5
 .quad node_4
node_3:
 .quad 466
 .quad 0
 .quad 0
node_4:
 .quad 328
 .quad 0
 .quad 0
node_5:
 .quad 41
 .quad 0
 .quad node_6
node_6:
 .quad 92
 .quad 0
 .quad node_7
node_7:
 .quad 216
 .quad 0
 .quad node_8
node_8:
 .quad 220
 .quad 0
 .quad 0
new_node:
 .quad 220
 .quad 0
 .quad 0

