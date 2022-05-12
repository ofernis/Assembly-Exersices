
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      __132_______           
#     /            \          
#    66_      ____270______   
#   /   \    /             \  
#  50  72   169_        __496 
#               \      /      
#              185   |481|   

test_start:
    
    cmpq $132, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $270, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_7, (node_1+16)
    jne bad_exit

    cmpq $66, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $169, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_6, (node_3+16)
    jne bad_exit

    cmpq $72, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $50, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $185, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $496, (node_7)
    jne bad_exit
    cmpq $new_node, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $185, (new_node)
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
 .quad 132
 .quad node_2
 .quad node_1
node_1:
 .quad 270
 .quad node_3
 .quad node_7
node_2:
 .quad 66
 .quad node_5
 .quad node_4
node_3:
 .quad 169
 .quad 0
 .quad node_6
node_4:
 .quad 72
 .quad 0
 .quad 0
node_5:
 .quad 50
 .quad 0
 .quad 0
node_6:
 .quad 185
 .quad 0
 .quad 0
node_7:
 .quad 496
 .quad new_node
 .quad 0
new_node:
 .quad 185
 .quad 0
 .quad 0

