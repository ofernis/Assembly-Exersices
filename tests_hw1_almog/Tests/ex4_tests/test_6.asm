
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#     ______125_______                  
#    /                \                 
#   44____       ____238_______         
#  /      \     /              \        
#  5    _108   221_       ____369_      
#      /           \     /        \     
#     101         228   272_     475_   
#                           \        \  
#                          332      477

test_start:
    
    cmpq $125, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $44, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_5, (node_1+16)
    jne bad_exit

    cmpq $238, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_8, (node_2+16)
    jne bad_exit

    cmpq $221, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $228, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $108, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $5, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $101, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $369, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit
    cmpq $node_10, (node_8+16)
    jne bad_exit

    cmpq $272, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_12, (node_9+16)
    jne bad_exit

    cmpq $475, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $node_11, (node_10+16)
    jne bad_exit

    cmpq $477, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $332, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $332, (new_node)
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
 .quad 125
 .quad node_1
 .quad node_2
node_1:
 .quad 44
 .quad node_6
 .quad node_5
node_2:
 .quad 238
 .quad node_3
 .quad node_8
node_3:
 .quad 221
 .quad 0
 .quad node_4
node_4:
 .quad 228
 .quad 0
 .quad 0
node_5:
 .quad 108
 .quad node_7
 .quad 0
node_6:
 .quad 5
 .quad 0
 .quad 0
node_7:
 .quad 101
 .quad 0
 .quad 0
node_8:
 .quad 369
 .quad node_9
 .quad node_10
node_9:
 .quad 272
 .quad 0
 .quad node_12
node_10:
 .quad 475
 .quad 0
 .quad node_11
node_11:
 .quad 477
 .quad 0
 .quad 0
node_12:
 .quad 332
 .quad 0
 .quad 0
new_node:
 .quad 332
 .quad 0
 .quad 0

