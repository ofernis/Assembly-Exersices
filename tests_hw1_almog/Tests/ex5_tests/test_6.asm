
.global _start

.section .text

# list before:
# [node_0:204]->[node_1:300]->[node_2:27]->[node_3:419]->[node_4:100]->[node_5:128]->[node_6:242]->[node_7:247]->[node_8:446]->[node_9:429]->[node_10:303]->[node_11:432]->[node_12:193]
# list after: (trying to swap 242 and 300)
# [node_0:204]->[node_6:242]->[node_2:27]->[node_3:419]->[node_4:100]->[node_5:128]->[node_1:300]->[node_7:247]->[node_8:446]->[node_9:429]->[node_10:303]->[node_11:432]->[node_12:193]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $204, (node_0)
    jne bad_exit
    cmpq $node_6, (node_0+8)
    jne bad_exit

    cmpq $242, (node_6)
    jne bad_exit
    cmpq $node_2, (node_6+8)
    jne bad_exit

    cmpq $27, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $419, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $100, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $128, (node_5)
    jne bad_exit
    cmpq $node_1, (node_5+8)
    jne bad_exit

    cmpq $300, (node_1)
    jne bad_exit
    cmpq $node_7, (node_1+8)
    jne bad_exit

    cmpq $247, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $446, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $429, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $303, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $432, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $193, (node_12)
    jne bad_exit
    cmpq $0, (node_12+8)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
head: .quad node_0
src: .quad 242
dst: .quad 300
node_0: 
 .quad 204
 .quad node_1
node_1: 
 .quad 300
 .quad node_2
node_2: 
 .quad 27
 .quad node_3
node_3: 
 .quad 419
 .quad node_4
node_4: 
 .quad 100
 .quad node_5
node_5: 
 .quad 128
 .quad node_6
node_6: 
 .quad 242
 .quad node_7
node_7: 
 .quad 247
 .quad node_8
node_8: 
 .quad 446
 .quad node_9
node_9: 
 .quad 429
 .quad node_10
node_10: 
 .quad 303
 .quad node_11
node_11: 
 .quad 432
 .quad node_12
node_12: 
 .quad 193
 .quad 0

