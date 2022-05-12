
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                  ____474 
#                 /        
#       _________466_      
#      /             \     
#    _180_          472    
#   /     \                
#  134   291__             
#             \            
#           |454|         

test_start:
    
    cmpq $474, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $466, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_5, (node_1+16)
    jne bad_exit

    cmpq $180, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $291, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $new_node, (node_3+16)
    jne bad_exit

    cmpq $134, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $472, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $472, (new_node)
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
 .quad 474
 .quad node_1
 .quad 0
node_1:
 .quad 466
 .quad node_2
 .quad node_5
node_2:
 .quad 180
 .quad node_4
 .quad node_3
node_3:
 .quad 291
 .quad 0
 .quad new_node
node_4:
 .quad 134
 .quad 0
 .quad 0
node_5:
 .quad 472
 .quad 0
 .quad 0
new_node:
 .quad 472
 .quad 0
 .quad 0

