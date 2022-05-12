
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#       _177_                        
#      /     \                       
#    _158   186_____________         
#   /                       \        
#  100           __________401_      
#               /              \     
#              268_______     410_   
#                        \        \  
#                   ____330      478 
#                  /                 
#                 282_               
#                     \              
#                    312            

test_start:
    
    cmpq $177, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $186, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $158, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $401, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_8, (node_3+16)
    jne bad_exit

    cmpq $268, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $330, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $282, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $312, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $410, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_10, (node_8+16)
    jne bad_exit

    cmpq $100, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $478, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $478, (new_node)
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
 .quad 177
 .quad node_2
 .quad node_1
node_1:
 .quad 186
 .quad 0
 .quad node_3
node_2:
 .quad 158
 .quad node_9
 .quad 0
node_3:
 .quad 401
 .quad node_4
 .quad node_8
node_4:
 .quad 268
 .quad 0
 .quad node_5
node_5:
 .quad 330
 .quad node_6
 .quad 0
node_6:
 .quad 282
 .quad 0
 .quad node_7
node_7:
 .quad 312
 .quad 0
 .quad 0
node_8:
 .quad 410
 .quad 0
 .quad node_10
node_9:
 .quad 100
 .quad 0
 .quad 0
node_10:
 .quad 478
 .quad 0
 .quad 0
new_node:
 .quad 478
 .quad 0
 .quad 0

