
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _______132_________________________   
#   /                                   \  
#  16_                    _____________414 
#     \                  /                 
#    33___       _______184____            
#         \     /              \           
#        100   163_          _237_         
#       /          \        /     \        
#      78         168_     210   307_      
#                     \              \     
#                    181            328   

test_start:
    
    cmpq $132, (node_0)
    jne bad_exit
    cmpq $node_7, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $414, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $184, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $163, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_6, (node_3+16)
    jne bad_exit

    cmpq $237, (node_4)
    jne bad_exit
    cmpq $node_10, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $307, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_12, (node_5+16)
    jne bad_exit

    cmpq $168, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_11, (node_6+16)
    jne bad_exit

    cmpq $16, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $33, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_9, (node_8+16)
    jne bad_exit

    cmpq $100, (node_9)
    jne bad_exit
    cmpq $node_13, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $210, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $181, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $328, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $78, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $78, (new_node)
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
 .quad 132
 .quad node_7
 .quad node_1
node_1:
 .quad 414
 .quad node_2
 .quad 0
node_2:
 .quad 184
 .quad node_3
 .quad node_4
node_3:
 .quad 163
 .quad 0
 .quad node_6
node_4:
 .quad 237
 .quad node_10
 .quad node_5
node_5:
 .quad 307
 .quad 0
 .quad node_12
node_6:
 .quad 168
 .quad 0
 .quad node_11
node_7:
 .quad 16
 .quad 0
 .quad node_8
node_8:
 .quad 33
 .quad 0
 .quad node_9
node_9:
 .quad 100
 .quad node_13
 .quad 0
node_10:
 .quad 210
 .quad 0
 .quad 0
node_11:
 .quad 181
 .quad 0
 .quad 0
node_12:
 .quad 328
 .quad 0
 .quad 0
node_13:
 .quad 78
 .quad 0
 .quad 0
new_node:
 .quad 78
 .quad 0
 .quad 0

