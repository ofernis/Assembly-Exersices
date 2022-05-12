
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      100_                       
#     /    \                      
#    83   120_                    
#   /         \                   
#  54        214_______           
#                      \          
#                 ____296_        
#                /        \       
#               216_     417__    
#                   \         \   
#                  262      |464|

test_start:
    
    cmpq $100, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $83, (node_1)
    jne bad_exit
    cmpq $node_5, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $120, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $214, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $296, (node_4)
    jne bad_exit
    cmpq $node_7, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $54, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $417, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $new_node, (node_6+16)
    jne bad_exit

    cmpq $216, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_8, (node_7+16)
    jne bad_exit

    cmpq $262, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $262, (new_node)
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
 .quad 100
 .quad node_1
 .quad node_2
node_1:
 .quad 83
 .quad node_5
 .quad 0
node_2:
 .quad 120
 .quad 0
 .quad node_3
node_3:
 .quad 214
 .quad 0
 .quad node_4
node_4:
 .quad 296
 .quad node_7
 .quad node_6
node_5:
 .quad 54
 .quad 0
 .quad 0
node_6:
 .quad 417
 .quad 0
 .quad new_node
node_7:
 .quad 216
 .quad 0
 .quad node_8
node_8:
 .quad 262
 .quad 0
 .quad 0
new_node:
 .quad 262
 .quad 0
 .quad 0

