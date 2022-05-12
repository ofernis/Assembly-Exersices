
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#  24____                  
#        \                 
#      _309____            
#     /        \           
#    108     _359____      
#           /        \     
#          354     _435_   
#                 /     \  
#                432   496

test_start:
    
    cmpq $24, (node_0)
    jne bad_exit
    cmpq $0, (node_0+8)
    jne bad_exit
    cmpq $node_1, (node_0+16)
    jne bad_exit

    cmpq $309, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_2, (node_1+16)
    jne bad_exit

    cmpq $359, (node_2)
    jne bad_exit
    cmpq $node_7, (node_2+8)
    jne bad_exit
    cmpq $node_3, (node_2+16)
    jne bad_exit

    cmpq $435, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit
    cmpq $node_5, (node_3+16)
    jne bad_exit

    cmpq $432, (node_4)
    jne bad_exit
    cmpq $0, (node_4+8)
    jne bad_exit
    cmpq $0, (node_4+16)
    jne bad_exit

    cmpq $496, (node_5)
    jne bad_exit
    cmpq $0, (node_5+8)
    jne bad_exit
    cmpq $0, (node_5+16)
    jne bad_exit

    cmpq $108, (node_6)
    jne bad_exit
    cmpq $0, (node_6+8)
    jne bad_exit
    cmpq $0, (node_6+16)
    jne bad_exit

    cmpq $354, (node_7)
    jne bad_exit
    cmpq $0, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $354, (new_node)
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
 .quad 24
 .quad 0
 .quad node_1
node_1:
 .quad 309
 .quad node_6
 .quad node_2
node_2:
 .quad 359
 .quad node_7
 .quad node_3
node_3:
 .quad 435
 .quad node_4
 .quad node_5
node_4:
 .quad 432
 .quad 0
 .quad 0
node_5:
 .quad 496
 .quad 0
 .quad 0
node_6:
 .quad 108
 .quad 0
 .quad 0
node_7:
 .quad 354
 .quad 0
 .quad 0
new_node:
 .quad 354
 .quad 0
 .quad 0

