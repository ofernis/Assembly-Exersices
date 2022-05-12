
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#   _______________________424____   
#  /                              \  
#  2_____________________       _468 
#                        \     /     
#                _______404   426    
#               /                    
#          ____207_                  
#         /        \                 
#     ___181_     229_               
#    /       \        \              
#   85_     201      336             
#      \                             
#     148                           

test_start:
    
    cmpq $424, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_6, (node_0+16)
    jne bad_exit

    cmpq $2, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $404, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $207, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $229, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_11, (node_4+16)
    jne bad_exit

    cmpq $181, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $468, (node_6)
    jne bad_exit
    cmpq $node_9, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $201, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $85, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_10, (node_8+16)
    jne bad_exit

    cmpq $426, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $148, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $336, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $336, (new_node)
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
 .quad 424
 .quad node_1
 .quad node_6
node_1:
 .quad 2
 .quad 0
 .quad node_2
node_2:
 .quad 404
 .quad node_3
 .quad 0
node_3:
 .quad 207
 .quad node_5
 .quad node_4
node_4:
 .quad 229
 .quad 0
 .quad node_11
node_5:
 .quad 181
 .quad node_8
 .quad node_7
node_6:
 .quad 468
 .quad node_9
 .quad 0
node_7:
 .quad 201
 .quad 0
 .quad 0
node_8:
 .quad 85
 .quad 0
 .quad node_10
node_9:
 .quad 426
 .quad 0
 .quad 0
node_10:
 .quad 148
 .quad 0
 .quad 0
node_11:
 .quad 336
 .quad 0
 .quad 0
new_node:
 .quad 336
 .quad 0
 .quad 0

