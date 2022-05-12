
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#             _214__________         
#            /              \        
#    _______183           _389____   
#   /                    /        \  
#  32_                 _370     _470 
#     \               /        /     
#    85___          _358      463    
#         \        /                 
#        168      317                
#       /                            
#      98                           

test_start:
    
    cmpq $214, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $183, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $389, (node_2)
    jne bad_exit
    cmpq $node_4, (node_2+8)
    jne bad_exit
    cmpq $node_8, (node_2+16)
    jne bad_exit

    cmpq $370, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $358, (node_5)
    jne bad_exit
    cmpq $node_12, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $32, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_7, (node_6+16)
    jne bad_exit

    cmpq $85, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_9, (node_7+16)
    jne bad_exit

    cmpq $470, (node_8)
    jne bad_exit
    cmpq $node_10, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $168, (node_9)
    jne bad_exit
    cmpq $node_11, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $463, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $98, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $317, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $168, (new_node)
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
 .quad 214
 .quad node_1
 .quad node_2
node_1:
 .quad 183
 .quad node_6
 .quad 0
node_2:
 .quad 389
 .quad node_4
 .quad node_8
node_4:
 .quad 370
 .quad node_5
 .quad 0
node_5:
 .quad 358
 .quad node_12
 .quad 0
node_6:
 .quad 32
 .quad 0
 .quad node_7
node_7:
 .quad 85
 .quad 0
 .quad node_9
node_8:
 .quad 470
 .quad node_10
 .quad 0
node_9:
 .quad 168
 .quad node_11
 .quad 0
node_10:
 .quad 463
 .quad 0
 .quad 0
node_11:
 .quad 98
 .quad 0
 .quad 0
node_12:
 .quad 317
 .quad 0
 .quad 0
new_node:
 .quad 168
 .quad 0
 .quad 0

