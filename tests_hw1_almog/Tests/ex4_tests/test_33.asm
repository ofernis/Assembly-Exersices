
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    _________341_         
#   /             \        
#  36_           386_      
#     \              \     
#    145_           407_   
#        \              \  
#       165_           422 
#           \              
#          215            

test_start:
    
    cmpq $341, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $386, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $36, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $407, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $node_7, (node_3+16)
    jne bad_exit

    cmpq $145, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $165, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $215, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $422, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $422, (new_node)
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
 .quad 341
 .quad node_2
 .quad node_1
node_1:
 .quad 386
 .quad 0
 .quad node_3
node_2:
 .quad 36
 .quad 0
 .quad node_4
node_3:
 .quad 407
 .quad 0
 .quad node_7
node_4:
 .quad 145
 .quad 0
 .quad node_5
node_5:
 .quad 165
 .quad 0
 .quad node_6
node_6:
 .quad 215
 .quad 0
 .quad 0
node_7:
 .quad 422
 .quad 0
 .quad 0
new_node:
 .quad 422
 .quad 0
 .quad 0

