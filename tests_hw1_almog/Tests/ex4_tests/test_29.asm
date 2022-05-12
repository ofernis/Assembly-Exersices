
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    ___________374____   
#   /                  \  
#  36_               _472 
#     \             /     
#    226_          375    
#        \                
#       234__             
#            \            
#          |293|         

test_start:
    
    cmpq $374, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $36, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $472, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $375, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $226, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $234, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $new_node, (node_5+16)
    jne bad_exit

    cmpq $234, (new_node)
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
 .quad 374
 .quad node_1
 .quad node_2
node_1:
 .quad 36
 .quad 0
 .quad node_4
node_2:
 .quad 472
 .quad node_3
 .quad 0
node_3:
 .quad 375
 .quad 0
 .quad 0
node_4:
 .quad 226
 .quad 0
 .quad node_5
node_5:
 .quad 234
 .quad 0
 .quad new_node
new_node:
 .quad 234
 .quad 0
 .quad 0

