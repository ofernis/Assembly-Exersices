
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#        ________________165____                    
#       /                       \                   
#      39_____                _207____________      
#     /       \              /                \     
#    29      110____        201        ______451_   
#   /       /       \                 /          \  
#  20      66     _152_             _398__      492 
#         /      /     \           /      \         
#        60     120   153         283   |435|      

test_start:
    
    cmpq $165, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_3, (node_0+16)
    jne bad_exit

    cmpq $39, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $110, (node_2)
    jne bad_exit
    cmpq $node_7, (node_2+8)
    jne bad_exit
    cmpq $node_8, (node_2+16)
    jne bad_exit

    cmpq $207, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $451, (node_4)
    jne bad_exit
    cmpq $node_10, (node_4+8)
    jne bad_exit
    cmpq $node_11, (node_4+16)
    jne bad_exit

    cmpq $201, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $29, (node_6)
    jne bad_exit
    cmpq $node_14, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $66, (node_7)
    jne bad_exit
    cmpq $node_16, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $152, (node_8)
    jne bad_exit
    cmpq $node_12, (node_8+8)
    jne bad_exit
    cmpq $node_15, (node_8+16)
    jne bad_exit

    cmpq $398, (node_10)
    jne bad_exit
    cmpq $node_13, (node_10+8)
    jne bad_exit
    cmpq $new_node, (node_10+16)
    jne bad_exit

    cmpq $492, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $120, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $283, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $20, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $153, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $60, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $60, (new_node)
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
 .quad 165
 .quad node_1
 .quad node_3
node_1:
 .quad 39
 .quad node_6
 .quad node_2
node_2:
 .quad 110
 .quad node_7
 .quad node_8
node_3:
 .quad 207
 .quad node_5
 .quad node_4
node_4:
 .quad 451
 .quad node_10
 .quad node_11
node_5:
 .quad 201
 .quad 0
 .quad 0
node_6:
 .quad 29
 .quad node_14
 .quad 0
node_7:
 .quad 66
 .quad node_16
 .quad 0
node_8:
 .quad 152
 .quad node_12
 .quad node_15
node_10:
 .quad 398
 .quad node_13
 .quad new_node
node_11:
 .quad 492
 .quad 0
 .quad 0
node_12:
 .quad 120
 .quad 0
 .quad 0
node_13:
 .quad 283
 .quad 0
 .quad 0
node_14:
 .quad 20
 .quad 0
 .quad 0
node_15:
 .quad 153
 .quad 0
 .quad 0
node_16:
 .quad 60
 .quad 0
 .quad 0
new_node:
 .quad 60
 .quad 0
 .quad 0

