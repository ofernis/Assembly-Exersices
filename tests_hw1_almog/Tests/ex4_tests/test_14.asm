
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    ________________________336_____________   
#   /                                        \  
#  73___                                ____499 
#       \                              /        
#      84_____________            ____429_      
#     /               \          /        \     
#    77       _______326__      402_     486    
#            /            \         \           
#          _190____     |334|      413          
#         /        \                            
#        156     _258                           
#               /                               
#              198                             

test_start:
    
    cmpq $336, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $499, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $73, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $429, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_11, (node_3+16)
    jne bad_exit

    cmpq $84, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $402, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_9, (node_5+16)
    jne bad_exit

    cmpq $77, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $326, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $new_node, (node_7+16)
    jne bad_exit

    cmpq $190, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $node_12, (node_8+16)
    jne bad_exit

    cmpq $413, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $156, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $486, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $258, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $198, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $198, (new_node)
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
 .quad 336
 .quad node_2
 .quad node_1
node_1:
 .quad 499
 .quad node_3
 .quad 0
node_2:
 .quad 73
 .quad 0
 .quad node_4
node_3:
 .quad 429
 .quad node_5
 .quad node_11
node_4:
 .quad 84
 .quad node_6
 .quad node_7
node_5:
 .quad 402
 .quad 0
 .quad node_9
node_6:
 .quad 77
 .quad 0
 .quad 0
node_7:
 .quad 326
 .quad node_8
 .quad new_node
node_8:
 .quad 190
 .quad node_10
 .quad node_12
node_9:
 .quad 413
 .quad 0
 .quad 0
node_10:
 .quad 156
 .quad 0
 .quad 0
node_11:
 .quad 486
 .quad 0
 .quad 0
node_12:
 .quad 258
 .quad node_13
 .quad 0
node_13:
 .quad 198
 .quad 0
 .quad 0
new_node:
 .quad 198
 .quad 0
 .quad 0

