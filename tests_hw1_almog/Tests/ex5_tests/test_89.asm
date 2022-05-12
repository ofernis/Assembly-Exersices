
.global _start

.section .text

# list before:
# [node_0:187]->[node_1:462]->[node_2:187]->[node_3:311]->[node_4:187]->[node_5:319]->[node_6:111]->[node_7:242]->[node_8:319]->[node_9:433]->[node_10:398]->[node_11:29]->[node_12:10]->[node_13:323]->[node_14:357]->[node_15:10]->[node_16:398]->[node_17:242]->[node_18:319]->[node_19:242]->[node_20:323]->[node_21:10]->[node_22:148]
# list after: (trying to swap 462 and 357)
# [node_0:187]->[node_14:357]->[node_2:187]->[node_3:311]->[node_4:187]->[node_5:319]->[node_6:111]->[node_7:242]->[node_8:319]->[node_9:433]->[node_10:398]->[node_11:29]->[node_12:10]->[node_13:323]->[node_1:462]->[node_15:10]->[node_16:398]->[node_17:242]->[node_18:319]->[node_19:242]->[node_20:323]->[node_21:10]->[node_22:148]

test_start:
    cmpq $node_0, (head)
    jne bad_exit
    
    cmpq $187, (node_0)
    jne bad_exit
    cmpq $node_14, (node_0+8)
    jne bad_exit

    cmpq $357, (node_14)
    jne bad_exit
    cmpq $node_2, (node_14+8)
    jne bad_exit

    cmpq $187, (node_2)
    jne bad_exit
    cmpq $node_3, (node_2+8)
    jne bad_exit

    cmpq $311, (node_3)
    jne bad_exit
    cmpq $node_4, (node_3+8)
    jne bad_exit

    cmpq $187, (node_4)
    jne bad_exit
    cmpq $node_5, (node_4+8)
    jne bad_exit

    cmpq $319, (node_5)
    jne bad_exit
    cmpq $node_6, (node_5+8)
    jne bad_exit

    cmpq $111, (node_6)
    jne bad_exit
    cmpq $node_7, (node_6+8)
    jne bad_exit

    cmpq $242, (node_7)
    jne bad_exit
    cmpq $node_8, (node_7+8)
    jne bad_exit

    cmpq $319, (node_8)
    jne bad_exit
    cmpq $node_9, (node_8+8)
    jne bad_exit

    cmpq $433, (node_9)
    jne bad_exit
    cmpq $node_10, (node_9+8)
    jne bad_exit

    cmpq $398, (node_10)
    jne bad_exit
    cmpq $node_11, (node_10+8)
    jne bad_exit

    cmpq $29, (node_11)
    jne bad_exit
    cmpq $node_12, (node_11+8)
    jne bad_exit

    cmpq $10, (node_12)
    jne bad_exit
    cmpq $node_13, (node_12+8)
    jne bad_exit

    cmpq $323, (node_13)
    jne bad_exit
    cmpq $node_1, (node_13+8)
    jne bad_exit

    cmpq $462, (node_1)
    jne bad_exit
    cmpq $node_15, (node_1+8)
    jne bad_exit

    cmpq $10, (node_15)
    jne bad_exit
    cmpq $node_16, (node_15+8)
    jne bad_exit

    cmpq $398, (node_16)
    jne bad_exit
    cmpq $node_17, (node_16+8)
    jne bad_exit

    cmpq $242, (node_17)
    jne bad_exit
    cmpq $node_18, (node_17+8)
    jne bad_exit

    cmpq $319, (node_18)
    jne bad_exit
    cmpq $node_19, (node_18+8)
    jne bad_exit

    cmpq $242, (node_19)
    jne bad_exit
    cmpq $node_20, (node_19+8)
    jne bad_exit

    cmpq $323, (node_20)
    jne bad_exit
    cmpq $node_21, (node_20+8)
    jne bad_exit

    cmpq $10, (node_21)
    jne bad_exit
    cmpq $node_22, (node_21+8)
    jne bad_exit

    cmpq $148, (node_22)
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
src: .quad 462
dst: .quad 357
node_0: 
 .quad 187
 .quad node_1
node_1: 
 .quad 462
 .quad node_2
node_2: 
 .quad 187
 .quad node_3
node_3: 
 .quad 311
 .quad node_4
node_4: 
 .quad 187
 .quad node_5
node_5: 
 .quad 319
 .quad node_6
node_6: 
 .quad 111
 .quad node_7
node_7: 
 .quad 242
 .quad node_8
node_8: 
 .quad 319
 .quad node_9
node_9: 
 .quad 433
 .quad node_10
node_10: 
 .quad 398
 .quad node_11
node_11: 
 .quad 29
 .quad node_12
node_12: 
 .quad 10
 .quad node_13
node_13: 
 .quad 323
 .quad node_14
node_14: 
 .quad 357
 .quad node_15
node_15: 
 .quad 10
 .quad node_16
node_16: 
 .quad 398
 .quad node_17
node_17: 
 .quad 242
 .quad node_18
node_18: 
 .quad 319
 .quad node_19
node_19: 
 .quad 242
 .quad node_20
node_20: 
 .quad 323
 .quad node_21
node_21: 
 .quad 10
 .quad node_22
node_22: 
 .quad 148
 .quad 0

