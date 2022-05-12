
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      ____________________________457 
#     /                                
#    15__________________________      
#   /                            \     
#   8                    _______443    
#  /                    /              
#  3               ____348____         
#                 /           \        
#            ____312_       _400       
#           /        \     /           
#          199_     333   352          
#         /    \                       
#        86   304                      
#       /                              
#      73                             

test_start:
    
    cmpq $457, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $15, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $8, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $443, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $348, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $400, (node_5)
    jne bad_exit
    cmpq $node_10, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $312, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $node_11, (node_6+16)
    jne bad_exit

    cmpq $199, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $node_12, (node_7+16)
    jne bad_exit

    cmpq $86, (node_8)
    jne bad_exit
    cmpq $node_13, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $3, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $352, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $333, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $304, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $73, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $73, (new_node)
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
 .quad 457
 .quad node_1
 .quad 0
node_1:
 .quad 15
 .quad node_2
 .quad node_3
node_2:
 .quad 8
 .quad node_9
 .quad 0
node_3:
 .quad 443
 .quad node_4
 .quad 0
node_4:
 .quad 348
 .quad node_6
 .quad node_5
node_5:
 .quad 400
 .quad node_10
 .quad 0
node_6:
 .quad 312
 .quad node_7
 .quad node_11
node_7:
 .quad 199
 .quad node_8
 .quad node_12
node_8:
 .quad 86
 .quad node_13
 .quad 0
node_9:
 .quad 3
 .quad 0
 .quad 0
node_10:
 .quad 352
 .quad 0
 .quad 0
node_11:
 .quad 333
 .quad 0
 .quad 0
node_12:
 .quad 304
 .quad 0
 .quad 0
node_13:
 .quad 73
 .quad 0
 .quad 0
new_node:
 .quad 73
 .quad 0
 .quad 0

