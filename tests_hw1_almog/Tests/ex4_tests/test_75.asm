
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  6______         
#         \        
#       _132_      
#      /     \     
#     115   320_   
#    /          \  
#   79         370

test_start:
    
    cmpq $6, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $132, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $115, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $79, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $320, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $370, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $370, (new_node)
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
 .quad 6
 .quad 0
 .quad node_1
node_1:
 .quad 132
 .quad node_2
 .quad node_4
node_2:
 .quad 115
 .quad node_3
 .quad 0
node_3:
 .quad 79
 .quad 0
 .quad 0
node_4:
 .quad 320
 .quad 0
 .quad node_5
node_5:
 .quad 370
 .quad 0
 .quad 0
new_node:
 .quad 370
 .quad 0
 .quad 0

