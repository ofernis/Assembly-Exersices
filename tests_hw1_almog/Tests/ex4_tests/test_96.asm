
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    __72_______         
#   /           \        
#  13_     ____176_      
#     \   /        \     
#    68  113_     336_   
#            \        \  
#           115      487

test_start:
    
    cmpq $72, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_3, (node_0+16)
    jne bad_exit

    cmpq $13, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $68, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $176, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $113, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $336, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $487, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $115, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $115, (new_node)
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
 .quad 72
 .quad node_1
 .quad node_3
node_1:
 .quad 13
 .quad 0
 .quad node_2
node_2:
 .quad 68
 .quad 0
 .quad 0
node_3:
 .quad 176
 .quad node_4
 .quad node_5
node_4:
 .quad 113
 .quad 0
 .quad node_7
node_5:
 .quad 336
 .quad 0
 .quad node_6
node_6:
 .quad 487
 .quad 0
 .quad 0
node_7:
 .quad 115
 .quad 0
 .quad 0
new_node:
 .quad 115
 .quad 0
 .quad 0

