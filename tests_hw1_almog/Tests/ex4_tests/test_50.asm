
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                   ____461 
#                  /        
#                _319_      
#               /     \     
#        ______291   419    
#       /                   
#      46_                  
#     /   \                 
#    34  128_               
#   /        \              
#  12       145            

test_start:
    
    cmpq $461, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $319, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_6, (node_1+16)
    jne bad_exit

    cmpq $291, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $46, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $128, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $145, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $419, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $34, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $12, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $12, (new_node)
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
 .quad 461
 .quad node_1
 .quad 0
node_1:
 .quad 319
 .quad node_2
 .quad node_6
node_2:
 .quad 291
 .quad node_3
 .quad 0
node_3:
 .quad 46
 .quad node_7
 .quad node_4
node_4:
 .quad 128
 .quad 0
 .quad node_5
node_5:
 .quad 145
 .quad 0
 .quad 0
node_6:
 .quad 419
 .quad 0
 .quad 0
node_7:
 .quad 34
 .quad node_8
 .quad 0
node_8:
 .quad 12
 .quad 0
 .quad 0
new_node:
 .quad 12
 .quad 0
 .quad 0

