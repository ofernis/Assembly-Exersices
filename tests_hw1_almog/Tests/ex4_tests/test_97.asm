
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    84__________________________                  
#   /                            \                 
#  16        ___________________365____            
#           /                          \           
#          151__________             _426_         
#         /             \           /     \        
#        94        ____252_        423   447____   
#       /         /        \                    \  
#      92       _178_     295_                _493 
#              /     \        \              /     
#             164   222      319            485   

test_start:
    
    cmpq $84, (node_0)
    jne bad_exit
    cmpq $node_8, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $365, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $426, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_6, (node_2+16)
    jne bad_exit

    cmpq $423, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $151, (node_4)
    jne bad_exit
    cmpq $node_11, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $252, (node_5)
    jne bad_exit
    cmpq $node_12, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $447, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_10, (node_6+16)
    jne bad_exit

    cmpq $295, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_9, (node_7+16)
    jne bad_exit

    cmpq $16, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $319, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $493, (node_10)
    jne bad_exit
    cmpq $node_16, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $94, (node_11)
    jne bad_exit
    cmpq $node_14, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $178, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit
    cmpq $node_15, (node_12+16)
    jne bad_exit

    cmpq $164, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $92, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $222, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $485, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $485, (new_node)
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
 .quad 84
 .quad node_8
 .quad node_1
node_1:
 .quad 365
 .quad node_4
 .quad node_2
node_2:
 .quad 426
 .quad node_3
 .quad node_6
node_3:
 .quad 423
 .quad 0
 .quad 0
node_4:
 .quad 151
 .quad node_11
 .quad node_5
node_5:
 .quad 252
 .quad node_12
 .quad node_7
node_6:
 .quad 447
 .quad 0
 .quad node_10
node_7:
 .quad 295
 .quad 0
 .quad node_9
node_8:
 .quad 16
 .quad 0
 .quad 0
node_9:
 .quad 319
 .quad 0
 .quad 0
node_10:
 .quad 493
 .quad node_16
 .quad 0
node_11:
 .quad 94
 .quad node_14
 .quad 0
node_12:
 .quad 178
 .quad node_13
 .quad node_15
node_13:
 .quad 164
 .quad 0
 .quad 0
node_14:
 .quad 92
 .quad 0
 .quad 0
node_15:
 .quad 222
 .quad 0
 .quad 0
node_16:
 .quad 485
 .quad 0
 .quad 0
new_node:
 .quad 485
 .quad 0
 .quad 0

