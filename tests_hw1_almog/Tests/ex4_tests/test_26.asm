
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    85_________         
#   /           \        
#  61    ______253____   
#       /             \  
#      100__        _357 
#           \      /     
#         |237|   317   

test_start:
    
    cmpq $85, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $253, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $61, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $357, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $100, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $new_node, (node_4+16)
    jne bad_exit

    cmpq $317, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $317, (new_node)
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
 .quad 85
 .quad node_2
 .quad node_1
node_1:
 .quad 253
 .quad node_4
 .quad node_3
node_2:
 .quad 61
 .quad 0
 .quad 0
node_3:
 .quad 357
 .quad node_5
 .quad 0
node_4:
 .quad 100
 .quad 0
 .quad new_node
node_5:
 .quad 317
 .quad 0
 .quad 0
new_node:
 .quad 317
 .quad 0
 .quad 0

