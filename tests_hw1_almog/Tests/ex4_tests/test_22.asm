
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                   _434_   
#                  /     \  
#        _________424   452 
#       /                   
#     _52____               
#    /       \              
#  |22|    _404_            
#         /     \           
#        128   414         

test_start:
    
    cmpq $434, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $424, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $452, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $52, (node_3)
    jne bad_exit
    cmpq $new_node, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $404, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $128, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $414, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $414, (new_node)
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
 .quad 434
 .quad node_1
 .quad node_2
node_1:
 .quad 424
 .quad node_3
 .quad 0
node_2:
 .quad 452
 .quad 0
 .quad 0
node_3:
 .quad 52
 .quad new_node
 .quad node_4
node_4:
 .quad 404
 .quad node_5
 .quad node_6
node_5:
 .quad 128
 .quad 0
 .quad 0
node_6:
 .quad 414
 .quad 0
 .quad 0
new_node:
 .quad 414
 .quad 0
 .quad 0

