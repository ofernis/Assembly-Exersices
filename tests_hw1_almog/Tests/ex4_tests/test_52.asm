
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#   7_______________                  
#  /                \                 
#  4              _294_______         
#                /           \        
#           ____243        _317_      
#          /              /     \     
#        _177_          _304   383_   
#       /     \        /           \  
#      158   185      296         482 
#     /                               
#    10                              

test_start:
    
    cmpq $7, (node_0)
    jne bad_exit
    cmpq $node_4, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $294, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $243, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $317, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit
    cmpq $node_7, (node_3+16)
    jne bad_exit

    cmpq $4, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $177, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $node_12, (node_5+16)
    jne bad_exit

    cmpq $158, (node_6)
    jne bad_exit
    cmpq $node_11, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $383, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_9, (node_7+16)
    jne bad_exit

    cmpq $304, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $482, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $296, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $10, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $185, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $185, (new_node)
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
 .quad 7
 .quad node_4
 .quad node_1
node_1:
 .quad 294
 .quad node_2
 .quad node_3
node_2:
 .quad 243
 .quad node_5
 .quad 0
node_3:
 .quad 317
 .quad node_8
 .quad node_7
node_4:
 .quad 4
 .quad 0
 .quad 0
node_5:
 .quad 177
 .quad node_6
 .quad node_12
node_6:
 .quad 158
 .quad node_11
 .quad 0
node_7:
 .quad 383
 .quad 0
 .quad node_9
node_8:
 .quad 304
 .quad node_10
 .quad 0
node_9:
 .quad 482
 .quad 0
 .quad 0
node_10:
 .quad 296
 .quad 0
 .quad 0
node_11:
 .quad 10
 .quad 0
 .quad 0
node_12:
 .quad 185
 .quad 0
 .quad 0
new_node:
 .quad 185
 .quad 0
 .quad 0

