
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _175_________      
#   /             \     
#  137          _426_   
#              /     \  
#           __328   474 
#          /            
#        |208|         

test_start:
    
    cmpq $175, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $137, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $426, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $474, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $328, (node_4)
    jne bad_exit
    cmpq $new_node, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $426, (new_node)
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
 .quad 175
 .quad node_1
 .quad node_2
node_1:
 .quad 137
 .quad 0
 .quad 0
node_2:
 .quad 426
 .quad node_4
 .quad node_3
node_3:
 .quad 474
 .quad 0
 .quad 0
node_4:
 .quad 328
 .quad new_node
 .quad 0
new_node:
 .quad 426
 .quad 0
 .quad 0

