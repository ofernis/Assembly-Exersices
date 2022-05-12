
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      ____189_____________   
#     /                    \  
#    125_       __________366 
#   /    \     /              
#  94   155   317_______      
#                       \     
#                  ____363    
#                 /           
#                346_         
#                    \        
#                   357      

test_start:
    
    cmpq $189, (node_0)
    jne bad_exit
    cmpq $node_5, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $366, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $317, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $363, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $346, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $125, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $357, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $155, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $94, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $94, (new_node)
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
 .quad 189
 .quad node_5
 .quad node_1
node_1:
 .quad 366
 .quad node_2
 .quad 0
node_2:
 .quad 317
 .quad 0
 .quad node_3
node_3:
 .quad 363
 .quad node_4
 .quad 0
node_4:
 .quad 346
 .quad 0
 .quad node_6
node_5:
 .quad 125
 .quad node_8
 .quad node_7
node_6:
 .quad 357
 .quad 0
 .quad 0
node_7:
 .quad 155
 .quad 0
 .quad 0
node_8:
 .quad 94
 .quad 0
 .quad 0
new_node:
 .quad 94
 .quad 0
 .quad 0

