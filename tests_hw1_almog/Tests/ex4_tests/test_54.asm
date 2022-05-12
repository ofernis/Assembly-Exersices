
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    ____315_         
#   /        \        
#  104_     339____   
#      \           \  
#     279        _447 
#               /     
#              350   

test_start:
    
    cmpq $315, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $339, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $104, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $447, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $279, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $350, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $350, (new_node)
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
 .quad 315
 .quad node_2
 .quad node_1
node_1:
 .quad 339
 .quad 0
 .quad node_3
node_2:
 .quad 104
 .quad 0
 .quad node_4
node_3:
 .quad 447
 .quad node_5
 .quad 0
node_4:
 .quad 279
 .quad 0
 .quad 0
node_5:
 .quad 350
 .quad 0
 .quad 0
new_node:
 .quad 350
 .quad 0
 .quad 0

