
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  40_______                     
#           \                    
#      ____278____               
#     /           \              
#    198_       _346__________   
#        \     /              \  
#       258   317     _______433 
#                    /           
#                   376_         
#                       \        
#                      382_      
#                          \     
#                         421   

test_start:
    
    cmpq $40, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $278, (node_1)
    jne bad_exit
    cmpq $node_4, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $346, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $433, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $198, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_7, (node_4+16)
    jne bad_exit

    cmpq $376, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $382, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $258, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $421, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $317, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $317, (new_node)
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
 .quad 278
 .quad node_4
 .quad node_2
node_2:
 .quad 346
 .quad node_9
 .quad node_3
node_3:
 .quad 433
 .quad node_5
 .quad 0
node_4:
 .quad 198
 .quad 0
 .quad node_7
node_5:
 .quad 376
 .quad 0
 .quad node_6
node_6:
 .quad 382
 .quad 0
 .quad node_8
node_7:
 .quad 258
 .quad 0
 .quad 0
node_8:
 .quad 421
 .quad 0
 .quad 0
node_9:
 .quad 317
 .quad 0
 .quad 0
new_node:
 .quad 317
 .quad 0
 .quad 0

