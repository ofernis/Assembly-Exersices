
.global _start

.section .text

# tree layout: (new_node value will be surrounded by | | if inserted)
#            ______224________________         
#           /                         \        
#        __88_                   ____391_      
#       /     \                 /        \     
#      23_   184_          ____371_     455_   
#     /   \      \        /        \        \  
#    19  35     199     _283_     372      456 
#   /                  /     \                 
#  14                 242   303               

test_start:
    
    cmpq $224, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit
    cmpq $node_2, (node_0+16)
    jne bad_exit

    cmpq $88, (node_1)
    jne bad_exit
    cmpq $node_6, (node_1+8)
    jne bad_exit
    cmpq $node_9, (node_1+16)
    jne bad_exit

    cmpq $391, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit
    cmpq $node_11, (node_2+16)
    jne bad_exit

    cmpq $371, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit
    cmpq $node_10, (node_3+16)
    jne bad_exit

    cmpq $283, (node_5)
    jne bad_exit
    cmpq $node_16, (node_5+8)
    jne bad_exit
    cmpq $node_14, (node_5+16)
    jne bad_exit

    cmpq $23, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit
    cmpq $node_8, (node_6+16)
    jne bad_exit

    cmpq $19, (node_7)
    jne bad_exit
    cmpq $node_15, (node_7+8)
    jne bad_exit
    cmpq $0, (node_7+16)
    jne bad_exit

    cmpq $35, (node_8)
    jne bad_exit
    cmpq $0, (node_8+8)
    jne bad_exit
    cmpq $0, (node_8+16)
    jne bad_exit

    cmpq $184, (node_9)
    jne bad_exit
    cmpq $0, (node_9+8)
    jne bad_exit
    cmpq $node_13, (node_9+16)
    jne bad_exit

    cmpq $372, (node_10)
    jne bad_exit
    cmpq $0, (node_10+8)
    jne bad_exit
    cmpq $0, (node_10+16)
    jne bad_exit

    cmpq $455, (node_11)
    jne bad_exit
    cmpq $0, (node_11+8)
    jne bad_exit
    cmpq $node_12, (node_11+16)
    jne bad_exit

    cmpq $456, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit
    cmpq $0, (node_12+16)
    jne bad_exit

    cmpq $199, (node_13)
    jne bad_exit
    cmpq $0, (node_13+8)
    jne bad_exit
    cmpq $0, (node_13+16)
    jne bad_exit

    cmpq $303, (node_14)
    jne bad_exit
    cmpq $0, (node_14+8)
    jne bad_exit
    cmpq $0, (node_14+16)
    jne bad_exit

    cmpq $14, (node_15)
    jne bad_exit
    cmpq $0, (node_15+8)
    jne bad_exit
    cmpq $0, (node_15+16)
    jne bad_exit

    cmpq $242, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
    jne bad_exit
    cmpq $0, (node_16+16)
    jne bad_exit

    cmpq $242, (new_node)
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
 .quad 224
 .quad node_1
 .quad node_2
node_1:
 .quad 88
 .quad node_6
 .quad node_9
node_2:
 .quad 391
 .quad node_3
 .quad node_11
node_3:
 .quad 371
 .quad node_5
 .quad node_10
node_5:
 .quad 283
 .quad node_16
 .quad node_14
node_6:
 .quad 23
 .quad node_7
 .quad node_8
node_7:
 .quad 19
 .quad node_15
 .quad 0
node_8:
 .quad 35
 .quad 0
 .quad 0
node_9:
 .quad 184
 .quad 0
 .quad node_13
node_10:
 .quad 372
 .quad 0
 .quad 0
node_11:
 .quad 455
 .quad 0
 .quad node_12
node_12:
 .quad 456
 .quad 0
 .quad 0
node_13:
 .quad 199
 .quad 0
 .quad 0
node_14:
 .quad 303
 .quad 0
 .quad 0
node_15:
 .quad 14
 .quad 0
 .quad 0
node_16:
 .quad 242
 .quad 0
 .quad 0
new_node:
 .quad 242
 .quad 0
 .quad 0

