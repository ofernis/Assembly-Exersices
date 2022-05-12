
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#        __________153__________   
#       /                       \  
#    __75___            _______444 
#   /       \          /           
#  31_     84_        177_         
#     \   /   \           \        
#    33  78  133_        264_      
#                \           \     
#               141         332   

test_start:
    
    cmpq $153, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_4, (node_0+16)
    jne bad_exit

    cmpq $75, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_5, (node_1+16)
    jne bad_exit

    cmpq $31, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $33, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $444, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $84, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $133, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_10, (node_6+16)
    jne bad_exit

    cmpq $177, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_11, (node_7+16)
    jne bad_exit

    cmpq $78, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $141, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $264, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_12, (node_11+16)
    jne bad_exit

    cmpq $332, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $332, (new_node)
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
 .quad 153
 .quad node_1
 .quad node_4
node_1:
 .quad 75
 .quad node_2
 .quad node_5
node_2:
 .quad 31
 .quad 0
 .quad node_3
node_3:
 .quad 33
 .quad 0
 .quad 0
node_4:
 .quad 444
 .quad node_7
 .quad 0
node_5:
 .quad 84
 .quad node_8
 .quad node_6
node_6:
 .quad 133
 .quad 0
 .quad node_10
node_7:
 .quad 177
 .quad 0
 .quad node_11
node_8:
 .quad 78
 .quad 0
 .quad 0
node_10:
 .quad 141
 .quad 0
 .quad 0
node_11:
 .quad 264
 .quad 0
 .quad node_12
node_12:
 .quad 332
 .quad 0
 .quad 0
new_node:
 .quad 332
 .quad 0
 .quad 0

