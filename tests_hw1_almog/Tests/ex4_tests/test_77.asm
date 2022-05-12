
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      _130_____________                              
#     /                 \                             
#    114              _277__________                  
#   /                /              \                 
#  88              _270     _______377_               
#                 /        /           \              
#            ____226      295_        395____         
#           /                 \              \        
#          153_              316_          _428_      
#              \                 \        /     \     
#             214               371      402   459_   
#                                                  \  
#                                                 472

test_start:
    
    cmpq $130, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $277, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $114, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $377, (node_3)
    jne bad_exit
    cmpq $node_9, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $88, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $395, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_8, (node_5+16)
    jne bad_exit

    cmpq $270, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $226, (node_7)
    jne bad_exit
    cmpq $node_13, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $428, (node_8)
    jne bad_exit
    cmpq $node_11, (node_8+8)
    jne bad_exit
    cmpq $node_10, (node_8+16)
    jne bad_exit

    cmpq $295, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_12, (node_9+16)
    jne bad_exit

    cmpq $459, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $node_16, (node_10+16)
    jne bad_exit

    cmpq $402, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $316, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $node_15, (node_12+16)
    jne bad_exit

    cmpq $153, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $node_14, (node_13+16)
    jne bad_exit

    cmpq $214, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $371, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $472, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $472, (new_node)
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
 .quad 130
 .quad node_2
 .quad node_1
node_1:
 .quad 277
 .quad node_6
 .quad node_3
node_2:
 .quad 114
 .quad node_4
 .quad 0
node_3:
 .quad 377
 .quad node_9
 .quad node_5
node_4:
 .quad 88
 .quad 0
 .quad 0
node_5:
 .quad 395
 .quad 0
 .quad node_8
node_6:
 .quad 270
 .quad node_7
 .quad 0
node_7:
 .quad 226
 .quad node_13
 .quad 0
node_8:
 .quad 428
 .quad node_11
 .quad node_10
node_9:
 .quad 295
 .quad 0
 .quad node_12
node_10:
 .quad 459
 .quad 0
 .quad node_16
node_11:
 .quad 402
 .quad 0
 .quad 0
node_12:
 .quad 316
 .quad 0
 .quad node_15
node_13:
 .quad 153
 .quad 0
 .quad node_14
node_14:
 .quad 214
 .quad 0
 .quad 0
node_15:
 .quad 371
 .quad 0
 .quad 0
node_16:
 .quad 472
 .quad 0
 .quad 0
new_node:
 .quad 472
 .quad 0
 .quad 0

