
.global _start

.section .text

# list before:
# [node_0:362]->[node_1:205]->[node_2:297]->[node_3:145]->[node_4:362]->[node_5:331]->[node_6:205]->[node_7:97]->[node_8:472]->[node_9:331]->[node_10:266]->[node_11:94]->[node_12:145]->[node_13:279]->[node_14:279]->[node_15:114]->[node_16:473]->[node_17:472]->[node_18:362]->[node_19:484]->[node_20:297]->[node_21:94]->[node_22:114]->[node_23:412]
# list after: (trying to swap 473 and 412)
# [node_0:362]->[node_1:205]->[node_2:297]->[node_3:145]->[node_4:362]->[node_5:331]->[node_6:205]->[node_7:97]->[node_8:472]->[node_9:331]->[node_10:266]->[node_11:94]->[node_12:145]->[node_13:279]->[node_14:279]->[node_15:114]->[node_23:412]->[node_17:472]->[node_18:362]->[node_19:484]->[node_20:297]->[node_21:94]->[node_22:114]->[node_16:473]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $362, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $205, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $297, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $145, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $362, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $331, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $205, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $97, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $472, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $331, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $266, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $94, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $145, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $279, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $279, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $114, (node_15)
    jne bad_exit
    cmpq $node_23, (node_15+8)
    jne bad_exit

    cmpq $412, (node_23)
    jne bad_exit
    cmpq $node_17, (node_23+8)
    jne bad_exit

    cmpq $472, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $362, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $484, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $297, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $94, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $114, (node_22)
    jne bad_exit
    cmpq $node_16, (node_22+8)
    jne bad_exit

    cmpq $473, (node_16)
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
src: .quad 473
dst: .quad 412
node_0: 
 .quad 362
 .quad node_1
node_1: 
 .quad 205
 .quad node_2
node_2: 
 .quad 297
 .quad node_3
node_3: 
 .quad 145
 .quad node_4
node_4: 
 .quad 362
 .quad node_5
node_5: 
 .quad 331
 .quad node_6
node_6: 
 .quad 205
 .quad node_7
node_7: 
 .quad 97
 .quad node_8
node_8: 
 .quad 472
 .quad node_9
node_9: 
 .quad 331
 .quad node_10
node_10: 
 .quad 266
 .quad node_11
node_11: 
 .quad 94
 .quad node_12
node_12: 
 .quad 145
 .quad node_13
node_13: 
 .quad 279
 .quad node_14
node_14: 
 .quad 279
 .quad node_15
node_15: 
 .quad 114
 .quad node_16
node_16: 
 .quad 473
 .quad node_17
node_17: 
 .quad 472
 .quad node_18
node_18: 
 .quad 362
 .quad node_19
node_19: 
 .quad 484
 .quad node_20
node_20: 
 .quad 297
 .quad node_21
node_21: 
 .quad 94
 .quad node_22
node_22: 
 .quad 114
 .quad node_23
node_23: 
 .quad 412
 .quad 0

