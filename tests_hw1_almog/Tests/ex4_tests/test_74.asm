
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    ______347_      
#   /          \     
#  63____     357_   
#        \        \  
#      _343      460 
#     /              
#    256            

test_start:
    
    cmpq $347, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $357, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $63, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $343, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $460, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $256, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $256, (new_node)
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
 .quad 347
 .quad node_2
 .quad node_1
node_1:
 .quad 357
 .quad 0
 .quad node_4
node_2:
 .quad 63
 .quad 0
 .quad node_3
node_3:
 .quad 343
 .quad node_5
 .quad 0
node_4:
 .quad 460
 .quad 0
 .quad 0
node_5:
 .quad 256
 .quad 0
 .quad 0
new_node:
 .quad 256
 .quad 0
 .quad 0

