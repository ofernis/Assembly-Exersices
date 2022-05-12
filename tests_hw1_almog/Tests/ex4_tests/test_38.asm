
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                      _______269_                     
#                     /           \                    
#          __________230____     285_____________      
#         /                 \                    \     
#    ____176____          _261              ____478_   
#   /           \        /                 /        \  
#  137_       _198_     249           ____395_     490 
#      \     /     \                 /        \        
#     160   189   223               358_     433       
#                                       \              
#                                      394            

test_start:
    
    cmpq $269, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $230, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_9, (node_1+16)
    jne bad_exit

    cmpq $285, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_5, (node_2+16)
    jne bad_exit

    cmpq $176, (node_3)
    jne bad_exit
    cmpq $node_6, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $198, (node_4)
    jne bad_exit
    cmpq $node_14, (node_4+8)
    jne bad_exit
    cmpq $node_15, (node_4+16)
    jne bad_exit

    cmpq $478, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit
    cmpq $node_8, (node_5+16)
    jne bad_exit

    cmpq $137, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_10, (node_6+16)
    jne bad_exit

    cmpq $395, (node_7)
    jne bad_exit
    cmpq $node_12, (node_7+8)
    jne bad_exit
    cmpq $node_11, (node_7+16)
    jne bad_exit

    cmpq $490, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $261, (node_9)
    jne bad_exit
    cmpq $node_16, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $160, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $433, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $358, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $node_13, (node_12+16)
    jne bad_exit

    cmpq $394, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $189, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $223, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $249, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $249, (new_node)
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
 .quad 269
 .quad node_1
 .quad node_2
node_1:
 .quad 230
 .quad node_3
 .quad node_9
node_2:
 .quad 285
 .quad 0
 .quad node_5
node_3:
 .quad 176
 .quad node_6
 .quad node_4
node_4:
 .quad 198
 .quad node_14
 .quad node_15
node_5:
 .quad 478
 .quad node_7
 .quad node_8
node_6:
 .quad 137
 .quad 0
 .quad node_10
node_7:
 .quad 395
 .quad node_12
 .quad node_11
node_8:
 .quad 490
 .quad 0
 .quad 0
node_9:
 .quad 261
 .quad node_16
 .quad 0
node_10:
 .quad 160
 .quad 0
 .quad 0
node_11:
 .quad 433
 .quad 0
 .quad 0
node_12:
 .quad 358
 .quad 0
 .quad node_13
node_13:
 .quad 394
 .quad 0
 .quad 0
node_14:
 .quad 189
 .quad 0
 .quad 0
node_15:
 .quad 223
 .quad 0
 .quad 0
node_16:
 .quad 249
 .quad 0
 .quad 0
new_node:
 .quad 249
 .quad 0
 .quad 0

