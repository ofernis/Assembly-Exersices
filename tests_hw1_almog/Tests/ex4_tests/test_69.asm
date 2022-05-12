
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  40_________________            
#                     \           
#                   _368_______   
#                  /           \  
#           ______359     ____424 
#          /             /        
#      ___188__         392_      
#     /        \            \     
#    64_     |316|         416    
#       \                         
#      146                       

test_start:
    
    cmpq $40, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $368, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_3, (node_1+16)
    jne bad_exit

    cmpq $359, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $424, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $392, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $188, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit
    cmpq $new_node, (node_5+16)
    jne bad_exit

    cmpq $64, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $416, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $146, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $146, (new_node)
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
 .quad 40
 .quad 0
 .quad node_1
node_1:
 .quad 368
 .quad node_2
 .quad node_3
node_2:
 .quad 359
 .quad node_5
 .quad 0
node_3:
 .quad 424
 .quad node_4
 .quad 0
node_4:
 .quad 392
 .quad 0
 .quad node_7
node_5:
 .quad 188
 .quad node_6
 .quad new_node
node_6:
 .quad 64
 .quad 0
 .quad node_8
node_7:
 .quad 416
 .quad 0
 .quad 0
node_8:
 .quad 146
 .quad 0
 .quad 0
new_node:
 .quad 146
 .quad 0
 .quad 0

