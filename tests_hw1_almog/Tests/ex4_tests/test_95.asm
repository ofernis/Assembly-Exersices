
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    ________214____                     
#   /               \                    
#  16______       _390__________         
#          \     /              \        
#        _163   277     _______464____   
#       /              /              \  
#      138            436_          _487 
#     /                   \        /     
#    78                  460_     470    
#                            \           
#                           462         

test_start:
    
    cmpq $214, (node_0)
    jne bad_exit
    cmpq $node_5, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $390, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $464, (node_2)
    jne bad_exit
    cmpq $node_7, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $277, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $487, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $16, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_8, (node_5+16)
    jne bad_exit

    cmpq $470, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $436, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_11, (node_7+16)
    jne bad_exit

    cmpq $163, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $138, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $78, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $460, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_12, (node_11+16)
    jne bad_exit

    cmpq $462, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $462, (new_node)
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
 .quad node_5
 .quad node_1
node_1:
 .quad 390
 .quad node_3
 .quad node_2
node_2:
 .quad 464
 .quad node_7
 .quad node_4
node_3:
 .quad 277
 .quad 0
 .quad 0
node_4:
 .quad 487
 .quad node_6
 .quad 0
node_5:
 .quad 16
 .quad 0
 .quad node_8
node_6:
 .quad 470
 .quad 0
 .quad 0
node_7:
 .quad 436
 .quad 0
 .quad node_11
node_8:
 .quad 163
 .quad node_9
 .quad 0
node_9:
 .quad 138
 .quad node_10
 .quad 0
node_10:
 .quad 78
 .quad 0
 .quad 0
node_11:
 .quad 460
 .quad 0
 .quad node_12
node_12:
 .quad 462
 .quad 0
 .quad 0
new_node:
 .quad 462
 .quad 0
 .quad 0

