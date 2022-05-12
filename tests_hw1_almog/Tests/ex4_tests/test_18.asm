
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    93____________                    
#   /              \                   
#  16         ____214_                 
#            /        \                
#        ___188_     228____________   
#       /       \                   \  
#      99_     191                _420 
#         \                      /     
#        128                   _405    
#                             /        
#                          __380       
#                         /            
#                       |340|         

test_start:
    
    cmpq $93, (node_0)
    jne bad_exit
    cmpq $node_8, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $214, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $188, (node_2)
    jne bad_exit
    cmpq $node_5, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $191, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $228, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_6, (node_4+16)
    jne bad_exit

    cmpq $99, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $420, (node_6)
    jne bad_exit
    cmpq $node_9, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $128, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $16, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $405, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $380, (node_10)
    jne bad_exit
    cmpq $new_node, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $380, (new_node)
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
 .quad 93
 .quad node_8
 .quad node_1
node_1:
 .quad 214
 .quad node_2
 .quad node_4
node_2:
 .quad 188
 .quad node_5
 .quad node_3
node_3:
 .quad 191
 .quad 0
 .quad 0
node_4:
 .quad 228
 .quad 0
 .quad node_6
node_5:
 .quad 99
 .quad 0
 .quad node_7
node_6:
 .quad 420
 .quad node_9
 .quad 0
node_7:
 .quad 128
 .quad 0
 .quad 0
node_8:
 .quad 16
 .quad 0
 .quad 0
node_9:
 .quad 405
 .quad node_10
 .quad 0
node_10:
 .quad 380
 .quad new_node
 .quad 0
new_node:
 .quad 380
 .quad 0
 .quad 0

