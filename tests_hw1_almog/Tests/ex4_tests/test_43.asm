
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    51____________________________   
#   /                              \  
#  36        _____________________412 
#           /                         
#        __128__________________      
#       /                       \     
#      81_      _______________399    
#         \    /                      
#        91   131_________            
#                         \           
#                       _279_         
#                      /     \        
#                   __147   315       
#                  /                  
#                |139|               

test_start:
    
    cmpq $51, (node_0)
    jne bad_exit
    cmpq $node_8, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $412, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit
    cmpq $0, (node_1+16)
    jne bad_exit

    cmpq $128, (node_2)
    jne bad_exit
    cmpq $node_9, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $399, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $0, (node_3+16)
    jne bad_exit

    cmpq $131, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $279, (node_5)
    jne bad_exit
    cmpq $node_7, (node_5+8)
    jne bad_exit
    cmpq $node_6, (node_5+16)
    jne bad_exit

    cmpq $315, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $147, (node_7)
    jne bad_exit
    cmpq $new_node, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $36, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $81, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_10, (node_9+16)
    jne bad_exit

    cmpq $91, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $91, (new_node)
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
 .quad 51
 .quad node_8
 .quad node_1
node_1:
 .quad 412
 .quad node_2
 .quad 0
node_2:
 .quad 128
 .quad node_9
 .quad node_3
node_3:
 .quad 399
 .quad node_4
 .quad 0
node_4:
 .quad 131
 .quad 0
 .quad node_5
node_5:
 .quad 279
 .quad node_7
 .quad node_6
node_6:
 .quad 315
 .quad 0
 .quad 0
node_7:
 .quad 147
 .quad new_node
 .quad 0
node_8:
 .quad 36
 .quad 0
 .quad 0
node_9:
 .quad 81
 .quad 0
 .quad node_10
node_10:
 .quad 91
 .quad 0
 .quad 0
new_node:
 .quad 91
 .quad 0
 .quad 0

