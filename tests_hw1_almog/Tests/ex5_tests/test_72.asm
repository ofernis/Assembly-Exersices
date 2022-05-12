
.global _start

.section .text

# list before:
# [node_0:84]->[node_1:317]->[node_2:62]->[node_3:317]->[node_4:66]->[node_5:408]->[node_6:177]->[node_7:369]->[node_8:62]->[node_9:317]->[node_10:177]->[node_11:435]->[node_12:177]->[node_13:322]->[node_14:119]->[node_15:410]->[node_16:119]->[node_17:62]->[node_18:410]->[node_19:166]->[node_20:84]->[node_21:143]->[node_22:3]
# list after: (trying to swap 66 and 408)
# [node_0:84]->[node_1:317]->[node_2:62]->[node_3:317]->[node_5:408]->[node_4:66]->[node_6:177]->[node_7:369]->[node_8:62]->[node_9:317]->[node_10:177]->[node_11:435]->[node_12:177]->[node_13:322]->[node_14:119]->[node_15:410]->[node_16:119]->[node_17:62]->[node_18:410]->[node_19:166]->[node_20:84]->[node_21:143]->[node_22:3]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $84, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $317, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $62, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $317, (node_3)
    jne bad_exit
    cmpq $node_5, (node_3+8)
    jne bad_exit

    cmpq $408, (node_5)
    jne bad_exit
    cmpq $node_4, (node_5+8)
    jne bad_exit

    cmpq $66, (node_4)
    jne bad_exit
    cmpq $node_6, (node_4+8)
    jne bad_exit

    cmpq $177, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $369, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $62, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $317, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $177, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $435, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $177, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $322, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $119, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $410, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $119, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $62, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $410, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $166, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $84, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $143, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $3, (node_22)
    jne bad_exit
    cmpq $0, (node_22+8)
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
src: .quad 66
dst: .quad 408
node_0: 
 .quad 84
 .quad node_1
node_1: 
 .quad 317
 .quad node_2
node_2: 
 .quad 62
 .quad node_3
node_3: 
 .quad 317
 .quad node_4
node_4: 
 .quad 66
 .quad node_5
node_5: 
 .quad 408
 .quad node_6
node_6: 
 .quad 177
 .quad node_7
node_7: 
 .quad 369
 .quad node_8
node_8: 
 .quad 62
 .quad node_9
node_9: 
 .quad 317
 .quad node_10
node_10: 
 .quad 177
 .quad node_11
node_11: 
 .quad 435
 .quad node_12
node_12: 
 .quad 177
 .quad node_13
node_13: 
 .quad 322
 .quad node_14
node_14: 
 .quad 119
 .quad node_15
node_15: 
 .quad 410
 .quad node_16
node_16: 
 .quad 119
 .quad node_17
node_17: 
 .quad 62
 .quad node_18
node_18: 
 .quad 410
 .quad node_19
node_19: 
 .quad 166
 .quad node_20
node_20: 
 .quad 84
 .quad node_21
node_21: 
 .quad 143
 .quad node_22
node_22: 
 .quad 3
 .quad 0

