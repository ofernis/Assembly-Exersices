
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  33___________________                           
#                       \                          
#                     _254_                        
#                    /     \                       
#            _______245   358__________            
#           /                          \           
#          156____                ____419_______   
#         /       \              /              \  
#        71     _231           _407_          _487 
#       /      /              /     \        /     
#      41     190            380   412     _465    
#     /                                   /        
#    37                                  429      

test_start:
    
    cmpq $33, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $254, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $358, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $419, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $487, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $245, (node_5)
    jne bad_exit
    cmpq $node_9, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $407, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit
    cmpq $node_12, (node_6+16)
    jne bad_exit

    cmpq $465, (node_7)
    jne bad_exit
    cmpq $node_10, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $380, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $156, (node_9)
    jne bad_exit
    cmpq $node_11, (node_9+8)
    jne bad_exit
    cmpq $node_13, (node_9+16)
    jne bad_exit

    cmpq $429, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $71, (node_11)
    jne bad_exit
    cmpq $node_14, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $412, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $231, (node_13)
    jne bad_exit
    cmpq $node_16, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $41, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $37, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $190, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $190, (new_node)
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
 .quad 33
 .quad 0
 .quad node_1
node_1:
 .quad 254
 .quad node_5
 .quad node_2
node_2:
 .quad 358
 .quad 0
 .quad node_3
node_3:
 .quad 419
 .quad node_6
 .quad node_4
node_4:
 .quad 487
 .quad node_7
 .quad 0
node_5:
 .quad 245
 .quad node_9
 .quad 0
node_6:
 .quad 407
 .quad node_8
 .quad node_12
node_7:
 .quad 465
 .quad node_10
 .quad 0
node_8:
 .quad 380
 .quad 0
 .quad 0
node_9:
 .quad 156
 .quad node_11
 .quad node_13
node_10:
 .quad 429
 .quad 0
 .quad 0
node_11:
 .quad 71
 .quad node_14
 .quad 0
node_12:
 .quad 412
 .quad 0
 .quad 0
node_13:
 .quad 231
 .quad node_16
 .quad 0
node_14:
 .quad 41
 .quad node_15
 .quad 0
node_15:
 .quad 37
 .quad 0
 .quad 0
node_16:
 .quad 190
 .quad 0
 .quad 0
new_node:
 .quad 190
 .quad 0
 .quad 0

