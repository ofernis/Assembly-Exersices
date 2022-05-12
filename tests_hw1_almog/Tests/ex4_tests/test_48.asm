
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                  _373_   
#                 /     \  
#               _337   402 
#              /           
#       ______299          
#      /                   
#    _247__                
#   /      \               
#  235   |280|            

test_start:
    
    cmpq $373, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_4, (node_0+16)
    jne bad_exit

    cmpq $337, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $299, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $247, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $new_node, (node_3+16)
    jne bad_exit

    cmpq $402, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $235, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $235, (new_node)
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
 .quad node_4
node_1:
 .quad 337
 .quad node_2
 .quad 0
node_2:
 .quad 299
 .quad node_3
 .quad 0
node_3:
 .quad 247
 .quad node_5
 .quad new_node
node_4:
 .quad 402
 .quad 0
 .quad 0
node_5:
 .quad 235
 .quad 0
 .quad 0
new_node:
 .quad 235
 .quad 0
 .quad 0

