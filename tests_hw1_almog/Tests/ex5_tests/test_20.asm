
.global _start

.section .text

# list before:
# [node_0:499]->[node_1:499]->[node_2:432]->[node_3:104]->[node_4:195]->[node_5:433]->[node_6:27]->[node_7:432]->[node_8:433]->[node_9:395]->[node_10:495]->[node_11:206]->[node_12:27]->[node_13:122]->[node_14:24]->[node_15:104]->[node_16:499]->[node_17:24]->[node_18:495]
# list after: (trying to swap 395 and 395)
# [node_0:499]->[node_1:499]->[node_2:432]->[node_3:104]->[node_4:195]->[node_5:433]->[node_6:27]->[node_7:432]->[node_8:433]->[node_9:395]->[node_10:495]->[node_11:206]->[node_12:27]->[node_13:122]->[node_14:24]->[node_15:104]->[node_16:499]->[node_17:24]->[node_18:495]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $499, (node_0)
    jne bad_exit
    cmpq $node_1, (node_0+8)
    jne bad_exit

    cmpq $499, (node_1)
    jne bad_exit
    cmpq $node_2, (node_1+8)
    jne bad_exit

    cmpq $432, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $104, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $195, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $433, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $27, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $432, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $433, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $395, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $495, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $206, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $27, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $122, (node_13)
    jne bad_exit
    cmpq $node_14, (node_13+8)
    jne bad_exit

    cmpq $24, (node_14)
    jne bad_exit
    cmpq $node_15, (node_14+8)
    jne bad_exit

    cmpq $104, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $499, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $24, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $495, (node_18)
    jne bad_exit
    cmpq $0, (node_18+8)
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
src: .quad 395
dst: .quad 395
node_0: 
 .quad 499
 .quad node_1
node_1: 
 .quad 499
 .quad node_2
node_2: 
 .quad 432
 .quad node_3
node_3: 
 .quad 104
 .quad node_4
node_4: 
 .quad 195
 .quad node_5
node_5: 
 .quad 433
 .quad node_6
node_6: 
 .quad 27
 .quad node_7
node_7: 
 .quad 432
 .quad node_8
node_8: 
 .quad 433
 .quad node_9
node_9: 
 .quad 395
 .quad node_10
node_10: 
 .quad 495
 .quad node_11
node_11: 
 .quad 206
 .quad node_12
node_12: 
 .quad 27
 .quad node_13
node_13: 
 .quad 122
 .quad node_14
node_14: 
 .quad 24
 .quad node_15
node_15: 
 .quad 104
 .quad node_16
node_16: 
 .quad 499
 .quad node_17
node_17: 
 .quad 24
 .quad node_18
node_18: 
 .quad 495
 .quad 0

