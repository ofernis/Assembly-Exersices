
.global _start

.section .text

# list before:
# [node_0:49]->[node_1:95]->[node_2:127]->[node_3:255]->[node_4:310]->[node_5:306]->[node_6:129]->[node_7:310]->[node_8:306]->[node_9:235]->[node_10:95]->[node_11:129]->[node_12:23]->[node_13:306]->[node_14:129]->[node_15:129]->[node_16:95]
# list after: (trying to swap 49 and 235)
# [node_9:235]->[node_1:95]->[node_2:127]->[node_3:255]->[node_4:310]->[node_5:306]->[node_6:129]->[node_7:310]->[node_8:306]->[node_0:49]->[node_10:95]->[node_11:129]->[node_12:23]->[node_13:306]->[node_14:129]->[node_15:129]->[node_16:95]

test_start:
    cmpq $node_9, (head)
    jne bad_exit
    
    cmpq $235, (node_9)
    jne bad_exit
    cmpq $node_1, (node_9+8)
    jne bad_exit

    cmpq $95, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $127, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $255, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $310, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $306, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $129, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $310, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $306, (node_8)
    jne bad_exit
    cmpq $node_0, (node_8+8)
    jne bad_exit

    cmpq $49, (node_0)
    jne bad_exit
    cmpq $node_10, (node_0+8)
    jne bad_exit

    cmpq $95, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $129, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $23, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $306, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $129, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $129, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $95, (node_16)
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
src: .quad 49
dst: .quad 235
node_0: 
 .quad 49
 .quad node_1
node_1: 
 .quad 95
 .quad node_2
node_2: 
 .quad 127
 .quad node_3
node_3: 
 .quad 255
 .quad node_4
node_4: 
 .quad 310
 .quad node_5
node_5: 
 .quad 306
 .quad node_6
node_6: 
 .quad 129
 .quad node_7
node_7: 
 .quad 310
 .quad node_8
node_8: 
 .quad 306
 .quad node_9
node_9: 
 .quad 235
 .quad node_10
node_10: 
 .quad 95
 .quad node_11
node_11: 
 .quad 129
 .quad node_12
node_12: 
 .quad 23
 .quad node_13
node_13: 
 .quad 306
 .quad node_14
node_14: 
 .quad 129
 .quad node_15
node_15: 
 .quad 129
 .quad node_16
node_16: 
 .quad 95
 .quad 0

