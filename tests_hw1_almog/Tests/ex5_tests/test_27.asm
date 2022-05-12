
.global _start

.section .text

# list before:
# [node_0:6]->[node_1:151]->[node_2:340]->[node_3:46]->[node_4:75]->[node_5:340]->[node_6:398]->[node_7:100]->[node_8:75]->[node_9:151]->[node_10:46]->[node_11:75]->[node_12:17]->[node_13:75]->[node_14:75]->[node_15:75]->[node_16:286]
# list after: (trying to swap 248 and 75)
# [node_0:6]->[node_1:151]->[node_2:340]->[node_3:46]->[node_4:75]->[node_5:340]->[node_6:398]->[node_7:100]->[node_8:75]->[node_9:151]->[node_10:46]->[node_11:75]->[node_12:17]->[node_13:75]->[node_14:75]->[node_15:75]->[node_16:286]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $6, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $151, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $340, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $46, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $75, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $340, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $398, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $100, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $75, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $151, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $46, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $75, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $17, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $75, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $75, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $75, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $286, (node_16)
    jne bad_exit
    cmpq $0, (node_16+8)
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
src: .quad 248
dst: .quad 75
node_0: 
 .quad 6
 .quad node_1
node_1: 
 .quad 151
 .quad node_2
node_2: 
 .quad 340
 .quad node_3
node_3: 
 .quad 46
 .quad node_4
node_4: 
 .quad 75
 .quad node_5
node_5: 
 .quad 340
 .quad node_6
node_6: 
 .quad 398
 .quad node_7
node_7: 
 .quad 100
 .quad node_8
node_8: 
 .quad 75
 .quad node_9
node_9: 
 .quad 151
 .quad node_10
node_10: 
 .quad 46
 .quad node_11
node_11: 
 .quad 75
 .quad node_12
node_12: 
 .quad 17
 .quad node_13
node_13: 
 .quad 75
 .quad node_14
node_14: 
 .quad 75
 .quad node_15
node_15: 
 .quad 75
 .quad node_16
node_16: 
 .quad 286
 .quad 0

