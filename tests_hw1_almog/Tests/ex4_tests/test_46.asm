
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      105__________________________________________   
#     /                                             \  
#    83                                     _______489 
#   /                                      /           
#  50             ________________________432____      
#                /                               \     
#           ____295_______                     _456    
#          /              \                   /        
#         119_          _309_______          448       
#             \        /           \                   
#            256     _308     ____384__                
#                   /        /         \               
#                  299      319_     |389|             
#                               \                      
#                              324                    

test_start:
    
    cmpq $105, (node_0)
    jne bad_exit
    cmpq $node_5, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $489, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $432, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $456, (node_3)
    jne bad_exit
    cmpq $node_14, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $295, (node_4)
    jne bad_exit
    cmpq $node_8, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $83, (node_5)
    jne bad_exit
    cmpq $node_15, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $309, (node_6)
    jne bad_exit
    cmpq $node_10, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $384, (node_7)
    jne bad_exit
    cmpq $node_9, (node_7+8)
    jne bad_exit
    cmpq $new_node, (node_7+16)
    jne bad_exit

    cmpq $119, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_13, (node_8+16)
    jne bad_exit

    cmpq $319, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_16, (node_9+16)
    jne bad_exit

    cmpq $308, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $299, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $256, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $448, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $50, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $324, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $324, (new_node)
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
 .quad 105
 .quad node_5
 .quad node_1
node_1:
 .quad 489
 .quad node_2
 .quad 0
node_2:
 .quad 432
 .quad node_4
 .quad node_3
node_3:
 .quad 456
 .quad node_14
 .quad 0
node_4:
 .quad 295
 .quad node_8
 .quad node_6
node_5:
 .quad 83
 .quad node_15
 .quad 0
node_6:
 .quad 309
 .quad node_10
 .quad node_7
node_7:
 .quad 384
 .quad node_9
 .quad new_node
node_8:
 .quad 119
 .quad 0
 .quad node_13
node_9:
 .quad 319
 .quad 0
 .quad node_16
node_10:
 .quad 308
 .quad node_11
 .quad 0
node_11:
 .quad 299
 .quad 0
 .quad 0
node_13:
 .quad 256
 .quad 0
 .quad 0
node_14:
 .quad 448
 .quad 0
 .quad 0
node_15:
 .quad 50
 .quad 0
 .quad 0
node_16:
 .quad 324
 .quad 0
 .quad 0
new_node:
 .quad 324
 .quad 0
 .quad 0

