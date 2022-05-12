
.global _start

.section .text

# list before:
# [node_0:184]->[node_1:138]->[node_2:393]->[node_3:433]->[node_4:408]->[node_5:318]->[node_6:379]->[node_7:76]->[node_8:17]->[node_9:138]->[node_10:225]->[node_11:225]->[node_12:138]->[node_13:412]->[node_14:184]->[node_15:179]->[node_16:179]->[node_17:153]->[node_18:153]->[node_19:184]->[node_20:58]
# list after: (trying to swap 76 and 17)
# [node_0:184]->[node_1:138]->[node_2:393]->[node_3:433]->[node_4:408]->[node_5:318]->[node_6:379]->[node_8:17]->[node_7:76]->[node_9:138]->[node_10:225]->[node_11:225]->[node_12:138]->[node_13:412]->[node_14:184]->[node_15:179]->[node_16:179]->[node_17:153]->[node_18:153]->[node_19:184]->[node_20:58]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $184, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $138, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $393, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $433, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $408, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $318, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $379, (node_6)
    jne bad_exit
    cmpq $node_8, (node_6+8)
    jne bad_exit

    cmpq $17, (node_8)
    jne bad_exit
    cmpq $node_7, (node_8+8)
    jne bad_exit

    cmpq $76, (node_7)
    jne bad_exit
    cmpq $node_9, (node_7+8)
    jne bad_exit

    cmpq $138, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $225, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $225, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $138, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $412, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $184, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $179, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $179, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $153, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $153, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $184, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $58, (node_20)
    jne bad_exit
    cmpq $0, (node_20+8)
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
src: .quad 76
dst: .quad 17
node_0: 
 .quad 184
 .quad node_1
node_1: 
 .quad 138
 .quad node_2
node_2: 
 .quad 393
 .quad node_3
node_3: 
 .quad 433
 .quad node_4
node_4: 
 .quad 408
 .quad node_5
node_5: 
 .quad 318
 .quad node_6
node_6: 
 .quad 379
 .quad node_7
node_7: 
 .quad 76
 .quad node_8
node_8: 
 .quad 17
 .quad node_9
node_9: 
 .quad 138
 .quad node_10
node_10: 
 .quad 225
 .quad node_11
node_11: 
 .quad 225
 .quad node_12
node_12: 
 .quad 138
 .quad node_13
node_13: 
 .quad 412
 .quad node_14
node_14: 
 .quad 184
 .quad node_15
node_15: 
 .quad 179
 .quad node_16
node_16: 
 .quad 179
 .quad node_17
node_17: 
 .quad 153
 .quad node_18
node_18: 
 .quad 153
 .quad node_19
node_19: 
 .quad 184
 .quad node_20
node_20: 
 .quad 58
 .quad 0

