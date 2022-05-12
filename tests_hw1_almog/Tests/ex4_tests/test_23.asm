
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#    46____________         
#   /              \        
#  17         ____378____   
#            /           \  
#        ___213_       _459 
#       /       \     /     
#      48_     244   454    
#         \                 
#        161               

test_start:
    
    cmpq $46, (node_0)
    jne bad_exit
    cmpq $node_2, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $378, (node_1)
    jne bad_exit
    cmpq $node_3, (node_1+8)
    jne bad_exit
    cmpq $node_6, (node_1+16)
    jne bad_exit

    cmpq $17, (node_2)
    jne bad_exit
    cmpq $0, (node_2+8)
    jne bad_exit
    cmpq $0, (node_2+16)
    jne bad_exit

    cmpq $213, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_8, (node_3+16)
    jne bad_exit

    cmpq $48, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $node_5, (node_4+16)
    jne bad_exit

    cmpq $161, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $459, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $454, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $244, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $244, (new_node)
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
 .quad 46
 .quad node_2
 .quad node_1
node_1:
 .quad 378
 .quad node_3
 .quad node_6
node_2:
 .quad 17
 .quad 0
 .quad 0
node_3:
 .quad 213
 .quad node_4
 .quad node_8
node_4:
 .quad 48
 .quad 0
 .quad node_5
node_5:
 .quad 161
 .quad 0
 .quad 0
node_6:
 .quad 459
 .quad node_7
 .quad 0
node_7:
 .quad 454
 .quad 0
 .quad 0
node_8:
 .quad 244
 .quad 0
 .quad 0
new_node:
 .quad 244
 .quad 0
 .quad 0

