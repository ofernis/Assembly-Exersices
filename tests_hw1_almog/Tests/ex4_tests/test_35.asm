
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#      _____________________420_   
#     /                         \  
#    56_____________           450 
#   /               \              
#  16    __________223_            
#       /              \           
#      121_           295_         
#          \              \        
#         142_           307       
#             \                    
#            168_                  
#                \                 
#               187               

test_start:
    
    cmpq $420, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $450, (node_1)
    jne bad_exit
    cmpq $0, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $56, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_4, (node_2+16)
    jne bad_exit

    cmpq $16, (node_3)
    jne bad_exit
    cmpq $0, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $223, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $295, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $node_7, (node_5+16)
    jne bad_exit

    cmpq $121, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $307, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $142, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $node_9, (node_8+16)
    jne bad_exit

    cmpq $168, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_11, (node_9+16)
    jne bad_exit

    cmpq $187, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $187, (new_node)
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
 .quad 420
 .quad node_2
 .quad node_1
node_1:
 .quad 450
 .quad 0
 .quad 0
node_2:
 .quad 56
 .quad node_3
 .quad node_4
node_3:
 .quad 16
 .quad 0
 .quad 0
node_4:
 .quad 223
 .quad node_6
 .quad node_5
node_5:
 .quad 295
 .quad 0
 .quad node_7
node_6:
 .quad 121
 .quad 0
 .quad node_8
node_7:
 .quad 307
 .quad 0
 .quad 0
node_8:
 .quad 142
 .quad 0
 .quad node_9
node_9:
 .quad 168
 .quad 0
 .quad node_11
node_11:
 .quad 187
 .quad 0
 .quad 0
new_node:
 .quad 187
 .quad 0
 .quad 0

