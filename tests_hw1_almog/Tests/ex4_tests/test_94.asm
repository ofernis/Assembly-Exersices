
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      ____________363_   
#     /                \  
#    152______        383 
#   /         \           
#  57      __320_         
#         /      \        
#       |299|   344      

test_start:
    
    cmpq $363, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $383, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $152, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $320, (node_3)
    jne bad_exit
    cmpq $new_node, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $344, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $57, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $57, (new_node)
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
 .quad 363
 .quad node_2
 .quad node_1
node_1:
 .quad 383
 .quad 0
 .quad 0
node_2:
 .quad 152
 .quad node_5
 .quad node_3
node_3:
 .quad 320
 .quad new_node
 .quad node_4
node_4:
 .quad 344
 .quad 0
 .quad 0
node_5:
 .quad 57
 .quad 0
 .quad 0
new_node:
 .quad 57
 .quad 0
 .quad 0

