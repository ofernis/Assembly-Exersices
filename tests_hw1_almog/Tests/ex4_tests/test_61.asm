
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                  ____203_______               
#                 /              \              
#            ____179_          _264____         
#           /        \        /        \        
#      ____123_     193     _252     _411_      
#     /        \           /        /     \     
#    63__     140         218      395   432_   
#   /    \                                   \  
#  22  |99|                                 495

test_start:
    
    cmpq $203, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $179, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_6, (node_1+16)
    jne bad_exit

    cmpq $264, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_8, (node_2+16)
    jne bad_exit

    cmpq $252, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $123, (node_4)
    jne bad_exit
    cmpq $node_9, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $140, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $193, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $218, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $411, (node_8)
    jne bad_exit
    cmpq $node_12, (node_8+8)
    jne bad_exit
    cmpq $node_11, (node_8+16)
    jne bad_exit

    cmpq $63, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit
    cmpq $new_node, (node_9+16)
    jne bad_exit

    cmpq $22, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $432, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_13, (node_11+16)
    jne bad_exit

    cmpq $395, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $495, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $495, (new_node)
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
 .quad 203
 .quad node_1
 .quad node_2
node_1:
 .quad 179
 .quad node_4
 .quad node_6
node_2:
 .quad 264
 .quad node_3
 .quad node_8
node_3:
 .quad 252
 .quad node_7
 .quad 0
node_4:
 .quad 123
 .quad node_9
 .quad node_5
node_5:
 .quad 140
 .quad 0
 .quad 0
node_6:
 .quad 193
 .quad 0
 .quad 0
node_7:
 .quad 218
 .quad 0
 .quad 0
node_8:
 .quad 411
 .quad node_12
 .quad node_11
node_9:
 .quad 63
 .quad node_10
 .quad new_node
node_10:
 .quad 22
 .quad 0
 .quad 0
node_11:
 .quad 432
 .quad 0
 .quad node_13
node_12:
 .quad 395
 .quad 0
 .quad 0
node_13:
 .quad 495
 .quad 0
 .quad 0
new_node:
 .quad 495
 .quad 0
 .quad 0

