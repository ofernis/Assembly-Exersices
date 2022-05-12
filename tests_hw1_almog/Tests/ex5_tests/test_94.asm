
.global _start

.section .text

# list before:
# [node_0:374]->[node_1:368]->[node_2:476]->[node_3:280]->[node_4:283]->[node_5:89]->[node_6:374]->[node_7:374]->[node_8:262]->[node_9:342]->[node_10:283]->[node_11:275]->[node_12:283]->[node_13:374]->[node_14:247]->[node_15:436]->[node_16:257]->[node_17:391]
# list after: (trying to swap 275 and 436)
# [node_0:374]->[node_1:368]->[node_2:476]->[node_3:280]->[node_4:283]->[node_5:89]->[node_6:374]->[node_7:374]->[node_8:262]->[node_9:342]->[node_10:283]->[node_15:436]->[node_12:283]->[node_13:374]->[node_14:247]->[node_11:275]->[node_16:257]->[node_17:391]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $374, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $368, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $476, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $280, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $283, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $89, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $374, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $374, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $262, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $342, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $283, (node_10)
    jne bad_exit
    cmpq $node_15, (node_10+8)
    jne bad_exit

    cmpq $436, (node_15)
    jne bad_exit
    cmpq $node_12, (node_15+8)
    jne bad_exit

    cmpq $283, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $374, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $247, (node_14)
    jne bad_exit
    cmpq $node_11, (node_14+8)
    jne bad_exit

    cmpq $275, (node_11)
    jne bad_exit
    cmpq $node_16, (node_11+8)
    jne bad_exit

    cmpq $257, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $391, (node_17)
    jne bad_exit
    cmpq $0, (node_17+8)
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
src: .quad 275
dst: .quad 436
node_0: 
 .quad 374
 .quad node_1
node_1: 
 .quad 368
 .quad node_2
node_2: 
 .quad 476
 .quad node_3
node_3: 
 .quad 280
 .quad node_4
node_4: 
 .quad 283
 .quad node_5
node_5: 
 .quad 89
 .quad node_6
node_6: 
 .quad 374
 .quad node_7
node_7: 
 .quad 374
 .quad node_8
node_8: 
 .quad 262
 .quad node_9
node_9: 
 .quad 342
 .quad node_10
node_10: 
 .quad 283
 .quad node_11
node_11: 
 .quad 275
 .quad node_12
node_12: 
 .quad 283
 .quad node_13
node_13: 
 .quad 374
 .quad node_14
node_14: 
 .quad 247
 .quad node_15
node_15: 
 .quad 436
 .quad node_16
node_16: 
 .quad 257
 .quad node_17
node_17: 
 .quad 391
 .quad 0

