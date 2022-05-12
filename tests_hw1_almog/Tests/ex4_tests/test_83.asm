
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                                 ____469_   
#                                /        \  
#                  _____________447_     478 
#                 /                 \        
#    ____________245_______        468       
#   /                      \                 
#  51_                ____403_               
#     \              /        \              
#    100____        250_     428             
#           \           \                    
#         _178_        283                   
#        /     \                             
#       148   219                           

test_start:
    
    cmpq $469, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_8, (node_0+16)
    jne bad_exit

    cmpq $447, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_7, (node_1+16)
    jne bad_exit

    cmpq $245, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_10, (node_2+16)
    jne bad_exit

    cmpq $51, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $100, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $178, (node_6)
    jne bad_exit
    cmpq $node_14, (node_6+8)
    jne bad_exit
    cmpq $node_9, (node_6+16)
    jne bad_exit

    cmpq $468, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $478, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $219, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $403, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit
    cmpq $node_12, (node_10+16)
    jne bad_exit

    cmpq $250, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_13, (node_11+16)
    jne bad_exit

    cmpq $428, (node_12)
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

    cmpq $148, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $148, (new_node)
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
 .quad 469
 .quad node_1
 .quad node_8
node_1:
 .quad 447
 .quad node_2
 .quad node_7
node_2:
 .quad 245
 .quad node_4
 .quad node_10
node_4:
 .quad 51
 .quad 0
 .quad node_5
node_5:
 .quad 100
 .quad 0
 .quad node_6
node_6:
 .quad 178
 .quad node_14
 .quad node_9
node_7:
 .quad 468
 .quad 0
 .quad 0
node_8:
 .quad 478
 .quad 0
 .quad 0
node_9:
 .quad 219
 .quad 0
 .quad 0
node_10:
 .quad 403
 .quad node_11
 .quad node_12
node_11:
 .quad 250
 .quad 0
 .quad node_13
node_12:
 .quad 428
 .quad 0
 .quad 0
node_13:
 .quad 283
 .quad 0
 .quad 0
node_14:
 .quad 148
 .quad 0
 .quad 0
new_node:
 .quad 148
 .quad 0
 .quad 0

