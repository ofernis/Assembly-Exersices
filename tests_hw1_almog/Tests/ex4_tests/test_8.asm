
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#        _________245____         
#       /                \        
#      76_______       _269_      
#     /         \     /     \     
#    67       _225   261   271_   
#   /        /                 \  
#  12      _166               453 
#         /                       
#        153                     

test_start:
    
    cmpq $245, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $269, (node_1)
    jne bad_exit
    cmpq $node_10, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $271, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_5, (node_2+16)
    jne bad_exit

    cmpq $76, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit
    cmpq $node_4, (node_3+16)
    jne bad_exit

    cmpq $225, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $453, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $166, (node_6)
    jne bad_exit
    cmpq $node_9, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $67, (node_7)
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

    cmpq $153, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $261, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $261, (new_node)
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
 .quad 245
 .quad node_3
 .quad node_1
node_1:
 .quad 269
 .quad node_10
 .quad node_2
node_2:
 .quad 271
 .quad 0
 .quad node_5
node_3:
 .quad 76
 .quad node_7
 .quad node_4
node_4:
 .quad 225
 .quad node_6
 .quad 0
node_5:
 .quad 453
 .quad 0
 .quad 0
node_6:
 .quad 166
 .quad node_9
 .quad 0
node_7:
 .quad 67
 .quad node_8
 .quad 0
node_8:
 .quad 12
 .quad 0
 .quad 0
node_9:
 .quad 153
 .quad 0
 .quad 0
node_10:
 .quad 261
 .quad 0
 .quad 0
new_node:
 .quad 261
 .quad 0
 .quad 0

