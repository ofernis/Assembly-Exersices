
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#     _232__________            
#    /              \           
#   146           _352_______   
#  /             /           \  
#  1           _301     ____483 
#             /        /        
#           _276      362_      
#          /              \     
#         233            469   

test_start:
    
    cmpq $232, (node_0)
    jne bad_exit
    cmpq $node_3, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $352, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $301, (node_2)
    jne bad_exit
    cmpq $node_6, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $146, (node_3)
    jne bad_exit
    cmpq $node_9, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $483, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $362, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_8, (node_5+16)
    jne bad_exit

    cmpq $276, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $233, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $469, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $1, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $1, (new_node)
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
 .quad 232
 .quad node_3
 .quad node_1
node_1:
 .quad 352
 .quad node_2
 .quad node_4
node_2:
 .quad 301
 .quad node_6
 .quad 0
node_3:
 .quad 146
 .quad node_9
 .quad 0
node_4:
 .quad 483
 .quad node_5
 .quad 0
node_5:
 .quad 362
 .quad 0
 .quad node_8
node_6:
 .quad 276
 .quad node_7
 .quad 0
node_7:
 .quad 233
 .quad 0
 .quad 0
node_8:
 .quad 469
 .quad 0
 .quad 0
node_9:
 .quad 1
 .quad 0
 .quad 0
new_node:
 .quad 1
 .quad 0
 .quad 0

