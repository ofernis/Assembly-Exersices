# 9<-6<-46<-20<-39<-10<-28<-31<-36<-33<-4<-10<-43<-45<-5<-16<-33<-29<-1<-33<-1<-47<-25<-21<-7<-33<-20<-4<-38<-18<-19<-30<-48<-3<-34<-12<-26<-33<-25<-24<-30<-48<-13<-23<-21<-25<-16<-7<-18
# src: 49
# dst: 29
.global _start
.section .data
src: .quad 49
dst: .quad 29
head:
.quad node1
node1:
.quad 18
.quad node2
node2:
.quad 7
.quad node3
node3:
.quad 16
.quad node4
node4:
.quad 25
.quad node5
node5:
.quad 21
.quad node6
node6:
.quad 23
.quad node7
node7:
.quad 13
.quad node8
node8:
.quad 48
.quad node9
node9:
.quad 30
.quad node10
node10:
.quad 24
.quad node11
node11:
.quad 25
.quad node12
node12:
.quad 33
.quad node13
node13:
.quad 26
.quad node14
node14:
.quad 12
.quad node15
node15:
.quad 34
.quad node16
node16:
.quad 3
.quad node17
node17:
.quad 48
.quad node18
node18:
.quad 30
.quad node19
node19:
.quad 19
.quad node20
node20:
.quad 18
.quad node21
node21:
.quad 38
.quad node22
node22:
.quad 4
.quad node23
node23:
.quad 20
.quad node24
node24:
.quad 33
.quad node25
node25:
.quad 7
.quad node26
node26:
.quad 21
.quad node27
node27:
.quad 25
.quad node28
node28:
.quad 47
.quad node29
node29:
.quad 1
.quad node30
node30:
.quad 33
.quad node31
node31:
.quad 1
.quad node32
node32:
.quad 29
.quad node33
node33:
.quad 33
.quad node34
node34:
.quad 16
.quad node35
node35:
.quad 5
.quad node36
node36:
.quad 45
.quad node37
node37:
.quad 43
.quad node38
node38:
.quad 10
.quad node39
node39:
.quad 4
.quad node40
node40:
.quad 33
.quad node41
node41:
.quad 36
.quad node42
node42:
.quad 31
.quad node43
node43:
.quad 28
.quad node44
node44:
.quad 10
.quad node45
node45:
.quad 39
.quad node46
node46:
.quad 20
.quad node47
node47:
.quad 46
.quad node48
node48:
.quad 6
.quad node49
node49:
.quad 9
.quad 0
.section .text
mov $node1, %rdx
cmpq $18, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $16, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $25, (%rdx)
jne bad_exit
cmpq $node5, 8(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $21, (%rdx)
jne bad_exit
cmpq $node6, 8(%rdx)
jne bad_exit
mov $node6, %rdx
cmpq $23, (%rdx)
jne bad_exit
cmpq $node7, 8(%rdx)
jne bad_exit
mov $node7, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node8, 8(%rdx)
jne bad_exit
mov $node8, %rdx
cmpq $48, (%rdx)
jne bad_exit
cmpq $node9, 8(%rdx)
jne bad_exit
mov $node9, %rdx
cmpq $30, (%rdx)
jne bad_exit
cmpq $node10, 8(%rdx)
jne bad_exit
mov $node10, %rdx
cmpq $24, (%rdx)
jne bad_exit
cmpq $node11, 8(%rdx)
jne bad_exit
mov $node11, %rdx
cmpq $25, (%rdx)
jne bad_exit
cmpq $node12, 8(%rdx)
jne bad_exit
mov $node12, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node13, 8(%rdx)
jne bad_exit
mov $node13, %rdx
cmpq $26, (%rdx)
jne bad_exit
cmpq $node14, 8(%rdx)
jne bad_exit
mov $node14, %rdx
cmpq $12, (%rdx)
jne bad_exit
cmpq $node15, 8(%rdx)
jne bad_exit
mov $node15, %rdx
cmpq $34, (%rdx)
jne bad_exit
cmpq $node16, 8(%rdx)
jne bad_exit
mov $node16, %rdx
cmpq $3, (%rdx)
jne bad_exit
cmpq $node17, 8(%rdx)
jne bad_exit
mov $node17, %rdx
cmpq $48, (%rdx)
jne bad_exit
cmpq $node18, 8(%rdx)
jne bad_exit
mov $node18, %rdx
cmpq $30, (%rdx)
jne bad_exit
cmpq $node19, 8(%rdx)
jne bad_exit
mov $node19, %rdx
cmpq $19, (%rdx)
jne bad_exit
cmpq $node20, 8(%rdx)
jne bad_exit
mov $node20, %rdx
cmpq $18, (%rdx)
jne bad_exit
cmpq $node21, 8(%rdx)
jne bad_exit
mov $node21, %rdx
cmpq $38, (%rdx)
jne bad_exit
cmpq $node22, 8(%rdx)
jne bad_exit
mov $node22, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node23, 8(%rdx)
jne bad_exit
mov $node23, %rdx
cmpq $20, (%rdx)
jne bad_exit
cmpq $node24, 8(%rdx)
jne bad_exit
mov $node24, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node25, 8(%rdx)
jne bad_exit
mov $node25, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node26, 8(%rdx)
jne bad_exit
mov $node26, %rdx
cmpq $21, (%rdx)
jne bad_exit
cmpq $node27, 8(%rdx)
jne bad_exit
mov $node27, %rdx
cmpq $25, (%rdx)
jne bad_exit
cmpq $node28, 8(%rdx)
jne bad_exit
mov $node28, %rdx
cmpq $47, (%rdx)
jne bad_exit
cmpq $node29, 8(%rdx)
jne bad_exit
mov $node29, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $node30, 8(%rdx)
jne bad_exit
mov $node30, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node31, 8(%rdx)
jne bad_exit
mov $node31, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $node32, 8(%rdx)
jne bad_exit
mov $node32, %rdx
cmpq $29, (%rdx)
jne bad_exit
cmpq $node33, 8(%rdx)
jne bad_exit
mov $node33, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node34, 8(%rdx)
jne bad_exit
mov $node34, %rdx
cmpq $16, (%rdx)
jne bad_exit
cmpq $node35, 8(%rdx)
jne bad_exit
mov $node35, %rdx
cmpq $5, (%rdx)
jne bad_exit
cmpq $node36, 8(%rdx)
jne bad_exit
mov $node36, %rdx
cmpq $45, (%rdx)
jne bad_exit
cmpq $node37, 8(%rdx)
jne bad_exit
mov $node37, %rdx
cmpq $43, (%rdx)
jne bad_exit
cmpq $node38, 8(%rdx)
jne bad_exit
mov $node38, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node39, 8(%rdx)
jne bad_exit
mov $node39, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node40, 8(%rdx)
jne bad_exit
mov $node40, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node41, 8(%rdx)
jne bad_exit
mov $node41, %rdx
cmpq $36, (%rdx)
jne bad_exit
cmpq $node42, 8(%rdx)
jne bad_exit
mov $node42, %rdx
cmpq $31, (%rdx)
jne bad_exit
cmpq $node43, 8(%rdx)
jne bad_exit
mov $node43, %rdx
cmpq $28, (%rdx)
jne bad_exit
cmpq $node44, 8(%rdx)
jne bad_exit
mov $node44, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node45, 8(%rdx)
jne bad_exit
mov $node45, %rdx
cmpq $39, (%rdx)
jne bad_exit
cmpq $node46, 8(%rdx)
jne bad_exit
mov $node46, %rdx
cmpq $20, (%rdx)
jne bad_exit
cmpq $node47, 8(%rdx)
jne bad_exit
mov $node47, %rdx
cmpq $46, (%rdx)
jne bad_exit
cmpq $node48, 8(%rdx)
jne bad_exit
mov $node48, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node49, 8(%rdx)
jne bad_exit
mov $node49, %rdx
cmpq $9, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
mov $head, %rdx
cmpq $node1, (%rdx)
jne bad_exit
exit:
 movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
