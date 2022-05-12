
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#            _______296_               
#           /           \              
#         _182_        302__________   
#        /     \                    \  
#    ___180   234_             ____450 
#   /             \           /        
#  64_           268        _365_      
#     \                    /     \     
#    173                  308   395   

test_start:
    
    cmpq $296, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $182, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_5, (node_1+16)
    jne bad_exit

    cmpq $302, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $180, (node_3)
    jne bad_exit
    cmpq $node_7, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $450, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $234, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_9, (node_5+16)
    jne bad_exit

    cmpq $365, (node_6)
    jne bad_exit
    cmpq $node_10, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $64, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_11, (node_7+16)
    jne bad_exit

    cmpq $395, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $268, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $308, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $173, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $173, (new_node)
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
 .quad 296
 .quad node_1
 .quad node_2
node_1:
 .quad 182
 .quad node_3
 .quad node_5
node_2:
 .quad 302
 .quad 0
 .quad node_4
node_3:
 .quad 180
 .quad node_7
 .quad 0
node_4:
 .quad 450
 .quad node_6
 .quad 0
node_5:
 .quad 234
 .quad 0
 .quad node_9
node_6:
 .quad 365
 .quad node_10
 .quad node_8
node_7:
 .quad 64
 .quad 0
 .quad node_11
node_8:
 .quad 395
 .quad 0
 .quad 0
node_9:
 .quad 268
 .quad 0
 .quad 0
node_10:
 .quad 308
 .quad 0
 .quad 0
node_11:
 .quad 173
 .quad 0
 .quad 0
new_node:
 .quad 173
 .quad 0
 .quad 0

