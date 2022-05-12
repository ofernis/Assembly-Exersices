
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#          ________373____   
#         /               \  
#        77___          _476 
#       /     \        /     
#     _35    121_     391    
#    /      /    \           
#  |10|    92   248         

test_start:
    
    cmpq $373, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_5, (node_0+16)
    jne bad_exit

    cmpq $77, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $121, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_7, (node_2+16)
    jne bad_exit

    cmpq $92, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $35, (node_4)
    jne bad_exit
    cmpq $new_node, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $476, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $391, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $248, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $248, (new_node)
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
 .quad 373
 .quad node_1
 .quad node_5
node_1:
 .quad 77
 .quad node_4
 .quad node_2
node_2:
 .quad 121
 .quad node_3
 .quad node_7
node_3:
 .quad 92
 .quad 0
 .quad 0
node_4:
 .quad 35
 .quad new_node
 .quad 0
node_5:
 .quad 476
 .quad node_6
 .quad 0
node_6:
 .quad 391
 .quad 0
 .quad 0
node_7:
 .quad 248
 .quad 0
 .quad 0
new_node:
 .quad 248
 .quad 0
 .quad 0

