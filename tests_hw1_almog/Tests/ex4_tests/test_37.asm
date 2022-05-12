
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#               ____236___________________   
#              /                          \  
#        _____214_             __________452 
#       /         \           /              
#    __86_       232        _310_______      
#   /     \                /           \     
#  51_   89_             _277        _430    
#     \     \           /           /        
#    77    125         266        _389       
#                                /           
#                               353         

test_start:
    
    cmpq $236, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $214, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_14, (node_1+16)
    jne bad_exit

    cmpq $452, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $86, (node_3)
    jne bad_exit
    cmpq $node_8, (node_3+8)
    jne bad_exit
    cmpq $node_11, (node_3+16)
    jne bad_exit

    cmpq $310, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $430, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $277, (node_6)
    jne bad_exit
    cmpq $node_9, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $389, (node_7)
    jne bad_exit
    cmpq $node_13, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $51, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_10, (node_8+16)
    jne bad_exit

    cmpq $266, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $77, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $89, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_12, (node_11+16)
    jne bad_exit

    cmpq $125, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $353, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $232, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $232, (new_node)
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
 .quad 236
 .quad node_1
 .quad node_2
node_1:
 .quad 214
 .quad node_3
 .quad node_14
node_2:
 .quad 452
 .quad node_4
 .quad 0
node_3:
 .quad 86
 .quad node_8
 .quad node_11
node_4:
 .quad 310
 .quad node_6
 .quad node_5
node_5:
 .quad 430
 .quad node_7
 .quad 0
node_6:
 .quad 277
 .quad node_9
 .quad 0
node_7:
 .quad 389
 .quad node_13
 .quad 0
node_8:
 .quad 51
 .quad 0
 .quad node_10
node_9:
 .quad 266
 .quad 0
 .quad 0
node_10:
 .quad 77
 .quad 0
 .quad 0
node_11:
 .quad 89
 .quad 0
 .quad node_12
node_12:
 .quad 125
 .quad 0
 .quad 0
node_13:
 .quad 353
 .quad 0
 .quad 0
node_14:
 .quad 232
 .quad 0
 .quad 0
new_node:
 .quad 232
 .quad 0
 .quad 0

