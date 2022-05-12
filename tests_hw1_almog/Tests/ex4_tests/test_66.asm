
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#         __________222__________________         
#        /                               \        
#       111_______                     _411____   
#      /          \                   /        \  
#   __88     ____199     ____________332     _460 
#  /        /           /                   /     
#  7_      165_        247_                437    
#    \         \           \                      
#   74        166         276______               
#                                  \              
#                               __321             
#                              /                  
#                            |295|               

test_start:
    
    cmpq $222, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $111, (node_1)
    jne bad_exit
    cmpq $node_8, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $411, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_6, (node_2+16)
    jne bad_exit

    cmpq $332, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $199, (node_4)
    jne bad_exit
    cmpq $node_10, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $247, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $460, (node_6)
    jne bad_exit
    cmpq $node_12, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $276, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_9, (node_7+16)
    jne bad_exit

    cmpq $88, (node_8)
    jne bad_exit
    cmpq $node_13, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $321, (node_9)
    jne bad_exit
    cmpq $new_node, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $165, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $node_11, (node_10+16)
    jne bad_exit

    cmpq $166, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $437, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $7, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $node_14, (node_13+16)
    jne bad_exit

    cmpq $74, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $74, (new_node)
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
 .quad 222
 .quad node_1
 .quad node_2
node_1:
 .quad 111
 .quad node_8
 .quad node_4
node_2:
 .quad 411
 .quad node_3
 .quad node_6
node_3:
 .quad 332
 .quad node_5
 .quad 0
node_4:
 .quad 199
 .quad node_10
 .quad 0
node_5:
 .quad 247
 .quad 0
 .quad node_7
node_6:
 .quad 460
 .quad node_12
 .quad 0
node_7:
 .quad 276
 .quad 0
 .quad node_9
node_8:
 .quad 88
 .quad node_13
 .quad 0
node_9:
 .quad 321
 .quad new_node
 .quad 0
node_10:
 .quad 165
 .quad 0
 .quad node_11
node_11:
 .quad 166
 .quad 0
 .quad 0
node_12:
 .quad 437
 .quad 0
 .quad 0
node_13:
 .quad 7
 .quad 0
 .quad node_14
node_14:
 .quad 74
 .quad 0
 .quad 0
new_node:
 .quad 74
 .quad 0
 .quad 0

