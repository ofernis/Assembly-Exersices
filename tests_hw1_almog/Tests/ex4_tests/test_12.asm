
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#       _________420_   
#      /             \  
#     99_           489 
#    /   \              
#   85  221____         
#  /           \        
#  5         _391       
#           /           
#          361         

test_start:
    
    cmpq $420, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_6, (node_0+16)
    jne bad_exit

    cmpq $99, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $221, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $391, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $85, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $5, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $489, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $361, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $489, (new_node)
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
 .quad 420
 .quad node_1
 .quad node_6
node_1:
 .quad 99
 .quad node_4
 .quad node_2
node_2:
 .quad 221
 .quad 0
 .quad node_3
node_3:
 .quad 391
 .quad node_7
 .quad 0
node_4:
 .quad 85
 .quad node_5
 .quad 0
node_5:
 .quad 5
 .quad 0
 .quad 0
node_6:
 .quad 489
 .quad 0
 .quad 0
node_7:
 .quad 361
 .quad 0
 .quad 0
new_node:
 .quad 489
 .quad 0
 .quad 0

