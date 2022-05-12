
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#   85__________________   
#  /                    \  
#  2               ____468 
#                 /        
#               _401_      
#              /     \     
#       ______262   404    
#      /                   
#     91_                  
#        \                 
#       136_               
#           \              
#          220            

test_start:
    
    cmpq $85, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $2, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $468, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $401, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_7, (node_3+16)
    jne bad_exit

    cmpq $262, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $91, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $136, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $404, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $220, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $220, (new_node)
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
 .quad node_1
 .quad node_2
node_1:
 .quad 2
 .quad 0
 .quad 0
node_2:
 .quad 468
 .quad node_3
 .quad 0
node_3:
 .quad 401
 .quad node_4
 .quad node_7
node_4:
 .quad 262
 .quad node_5
 .quad 0
node_5:
 .quad 91
 .quad 0
 .quad node_6
node_6:
 .quad 136
 .quad 0
 .quad node_8
node_7:
 .quad 404
 .quad 0
 .quad 0
node_8:
 .quad 220
 .quad 0
 .quad 0
new_node:
 .quad 220
 .quad 0
 .quad 0

