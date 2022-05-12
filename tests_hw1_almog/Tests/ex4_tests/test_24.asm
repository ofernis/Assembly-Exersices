
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#          _________________405_           
#         /                     \          
#      __87______              445______   
#     /          \                      \  
#    24_       _192_                 __487 
#   /   \     /     \               /      
#  21  72    107   280____        |456|    
#           /             \                
#          90           _331               
#                      /                   
#                     296                 

test_start:
    
    cmpq $405, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $445, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_5, (node_1+16)
    jne bad_exit

    cmpq $87, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $192, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit
    cmpq $node_9, (node_3+16)
    jne bad_exit

    cmpq $24, (node_4)
    jne bad_exit
    cmpq $node_8, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $487, (node_5)
    jne bad_exit
    cmpq $new_node, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $107, (node_6)
    jne bad_exit
    cmpq $node_11, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $72, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $21, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $280, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_10, (node_9+16)
    jne bad_exit

    cmpq $331, (node_10)
    jne bad_exit
    cmpq $node_12, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $90, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $296, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $296, (new_node)
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
 .quad 405
 .quad node_2
 .quad node_1
node_1:
 .quad 445
 .quad 0
 .quad node_5
node_2:
 .quad 87
 .quad node_4
 .quad node_3
node_3:
 .quad 192
 .quad node_6
 .quad node_9
node_4:
 .quad 24
 .quad node_8
 .quad node_7
node_5:
 .quad 487
 .quad new_node
 .quad 0
node_6:
 .quad 107
 .quad node_11
 .quad 0
node_7:
 .quad 72
 .quad 0
 .quad 0
node_8:
 .quad 21
 .quad 0
 .quad 0
node_9:
 .quad 280
 .quad 0
 .quad node_10
node_10:
 .quad 331
 .quad node_12
 .quad 0
node_11:
 .quad 90
 .quad 0
 .quad 0
node_12:
 .quad 296
 .quad 0
 .quad 0
new_node:
 .quad 296
 .quad 0
 .quad 0

