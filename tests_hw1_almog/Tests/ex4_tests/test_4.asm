
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  2__________________                        
#                     \                       
#    ________________288_______               
#   /                          \              
#   8___________             _328____         
#               \           /        \        
#             _255_       _314     _404_      
#            /     \     /        /     \     
#          _228   282   313      340   449_   
#         /                                \  
#        128                              451 
#       /                                     
#      59                                     
#     /                                       
#    47                                      

test_start:
    
    cmpq $2, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $288, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $328, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_7, (node_2+16)
    jne bad_exit

    cmpq $8, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_6, (node_3+16)
    jne bad_exit

    cmpq $314, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $313, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $255, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit
    cmpq $node_16, (node_6+16)
    jne bad_exit

    cmpq $404, (node_7)
    jne bad_exit
    cmpq $node_15, (node_7+8)
    jne bad_exit
    cmpq $node_9, (node_7+16)
    jne bad_exit

    cmpq $228, (node_8)
    jne bad_exit
    cmpq $node_11, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $449, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_10, (node_9+16)
    jne bad_exit

    cmpq $451, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $128, (node_11)
    jne bad_exit
    cmpq $node_13, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $59, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $47, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $340, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $282, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $282, (new_node)
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
 .quad 2
 .quad 0
 .quad node_1
node_1:
 .quad 288
 .quad node_3
 .quad node_2
node_2:
 .quad 328
 .quad node_4
 .quad node_7
node_3:
 .quad 8
 .quad 0
 .quad node_6
node_4:
 .quad 314
 .quad node_5
 .quad 0
node_5:
 .quad 313
 .quad 0
 .quad 0
node_6:
 .quad 255
 .quad node_8
 .quad node_16
node_7:
 .quad 404
 .quad node_15
 .quad node_9
node_8:
 .quad 228
 .quad node_11
 .quad 0
node_9:
 .quad 449
 .quad 0
 .quad node_10
node_10:
 .quad 451
 .quad 0
 .quad 0
node_11:
 .quad 128
 .quad node_13
 .quad 0
node_13:
 .quad 59
 .quad node_14
 .quad 0
node_14:
 .quad 47
 .quad 0
 .quad 0
node_15:
 .quad 340
 .quad 0
 .quad 0
node_16:
 .quad 282
 .quad 0
 .quad 0
new_node:
 .quad 282
 .quad 0
 .quad 0

