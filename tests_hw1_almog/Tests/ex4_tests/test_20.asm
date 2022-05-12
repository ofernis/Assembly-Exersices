
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#                           _______490 
#                          /           
#                  _______361_         
#                 /           \        
#      __________238_        370_      
#     /              \           \     
#    139____        266_        413    
#   /       \           \              
#  38     _229_        290             
#        /     \                       
#       187   235                     

test_start:
    
    cmpq $490, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $0, (node_0+16)
    jne bad_exit

    cmpq $361, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $node_4, (node_1+16)
    jne bad_exit

    cmpq $238, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_7, (node_2+16)
    jne bad_exit

    cmpq $139, (node_3)
    jne bad_exit
    cmpq $node_11, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $370, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_9, (node_4+16)
    jne bad_exit

    cmpq $229, (node_5)
    jne bad_exit
    cmpq $node_8, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $235, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $266, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $node_10, (node_7+16)
    jne bad_exit

    cmpq $187, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $413, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $0, (node_9+16)
    jne bad_exit

    cmpq $290, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $38, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $0, (node_11+16)
    jne bad_exit

    cmpq $38, (new_node)
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
 .quad 490
 .quad node_1
 .quad 0
node_1:
 .quad 361
 .quad node_2
 .quad node_4
node_2:
 .quad 238
 .quad node_3
 .quad node_7
node_3:
 .quad 139
 .quad node_11
 .quad node_5
node_4:
 .quad 370
 .quad 0
 .quad node_9
node_5:
 .quad 229
 .quad node_8
 .quad node_6
node_6:
 .quad 235
 .quad 0
 .quad 0
node_7:
 .quad 266
 .quad 0
 .quad node_10
node_8:
 .quad 187
 .quad 0
 .quad 0
node_9:
 .quad 413
 .quad 0
 .quad 0
node_10:
 .quad 290
 .quad 0
 .quad 0
node_11:
 .quad 38
 .quad 0
 .quad 0
new_node:
 .quad 38
 .quad 0
 .quad 0

