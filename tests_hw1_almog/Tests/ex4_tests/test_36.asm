
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      ________________________427_      
#     /                            \     
#    41____                       468_   
#   /      \                          \  
#  24    _205________________        481 
#       /                    \           
#      170     _____________401          
#             /                          
#            209_                        
#                \                       
#               231_______               
#                         \              
#                    ____382             
#                   /                    
#                  301_                  
#                      \                 
#                     345               

test_start:
    
    cmpq $427, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_5, (node_0+16)
    jne bad_exit

    cmpq $41, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $205, (node_3)
    jne bad_exit
    cmpq $node_11, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $401, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $468, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_12, (node_5+16)
    jne bad_exit

    cmpq $209, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $231, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $382, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $24, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $301, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $node_13, (node_10+16)
    jne bad_exit

    cmpq $170, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $481, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $345, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $345, (new_node)
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
 .quad 427
 .quad node_2
 .quad node_5
node_2:
 .quad 41
 .quad node_9
 .quad node_3
node_3:
 .quad 205
 .quad node_11
 .quad node_4
node_4:
 .quad 401
 .quad node_6
 .quad 0
node_5:
 .quad 468
 .quad 0
 .quad node_12
node_6:
 .quad 209
 .quad 0
 .quad node_7
node_7:
 .quad 231
 .quad 0
 .quad node_8
node_8:
 .quad 382
 .quad node_10
 .quad 0
node_9:
 .quad 24
 .quad 0
 .quad 0
node_10:
 .quad 301
 .quad 0
 .quad node_13
node_11:
 .quad 170
 .quad 0
 .quad 0
node_12:
 .quad 481
 .quad 0
 .quad 0
node_13:
 .quad 345
 .quad 0
 .quad 0
new_node:
 .quad 345
 .quad 0
 .quad 0

