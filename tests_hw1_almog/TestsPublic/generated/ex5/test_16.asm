# 21<-18<-10<-8<-27<-13<-19<-5<-15<-10<-13<-31<-16<-25<-17<-8<-35<-32<-30<-22<-9<-25<-7<-15<-35<-2<-4<-13<-7<-23<-32<-28<-20<-31<-16
# src: 20
# dst: 2
.global _start
.section .data
src: .quad 20
dst: .quad 2
head:
.quad node1
node1:
.quad 16
.quad node2
node2:
.quad 31
.quad node3
node3:
.quad 20
.quad node4
node4:
.quad 28
.quad node5
node5:
.quad 32
.quad node6
node6:
.quad 23
.quad node7
node7:
.quad 7
.quad node8
node8:
.quad 13
.quad node9
node9:
.quad 4
.quad node10
node10:
.quad 2
.quad node11
node11:
.quad 35
.quad node12
node12:
.quad 15
.quad node13
node13:
.quad 7
.quad node14
node14:
.quad 25
.quad node15
node15:
.quad 9
.quad node16
node16:
.quad 22
.quad node17
node17:
.quad 30
.quad node18
node18:
.quad 32
.quad node19
node19:
.quad 35
.quad node20
node20:
.quad 8
.quad node21
node21:
.quad 17
.quad node22
node22:
.quad 25
.quad node23
node23:
.quad 16
.quad node24
node24:
.quad 31
.quad node25
node25:
.quad 13
.quad node26
node26:
.quad 10
.quad node27
node27:
.quad 15
.quad node28
node28:
.quad 5
.quad node29
node29:
.quad 19
.quad node30
node30:
.quad 13
.quad node31
node31:
.quad 27
.quad node32
node32:
.quad 8
.quad node33
node33:
.quad 10
.quad node34
node34:
.quad 18
.quad node35
node35:
.quad 21
.quad 0
.section .text
mov $node1, %rdx
cmpq $16, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $31, (%rdx)
jne bad_exit
cmpq $node10, 8(%rdx)
jne bad_exit
mov $node10, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $28, (%rdx)
jne bad_exit
cmpq $node5, 8(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $32, (%rdx)
jne bad_exit
cmpq $node6, 8(%rdx)
jne bad_exit
mov $node6, %rdx
cmpq $23, (%rdx)
jne bad_exit
cmpq $node7, 8(%rdx)
jne bad_exit
mov $node7, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node8, 8(%rdx)
jne bad_exit
mov $node8, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node9, 8(%rdx)
jne bad_exit
mov $node9, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $20, (%rdx)
jne bad_exit
cmpq $node11, 8(%rdx)
jne bad_exit
mov $node11, %rdx
cmpq $35, (%rdx)
jne bad_exit
cmpq $node12, 8(%rdx)
jne bad_exit
mov $node12, %rdx
cmpq $15, (%rdx)
jne bad_exit
cmpq $node13, 8(%rdx)
jne bad_exit
mov $node13, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node14, 8(%rdx)
jne bad_exit
mov $node14, %rdx
cmpq $25, (%rdx)
jne bad_exit
cmpq $node15, 8(%rdx)
jne bad_exit
mov $node15, %rdx
cmpq $9, (%rdx)
jne bad_exit
cmpq $node16, 8(%rdx)
jne bad_exit
mov $node16, %rdx
cmpq $22, (%rdx)
jne bad_exit
cmpq $node17, 8(%rdx)
jne bad_exit
mov $node17, %rdx
cmpq $30, (%rdx)
jne bad_exit
cmpq $node18, 8(%rdx)
jne bad_exit
mov $node18, %rdx
cmpq $32, (%rdx)
jne bad_exit
cmpq $node19, 8(%rdx)
jne bad_exit
mov $node19, %rdx
cmpq $35, (%rdx)
jne bad_exit
cmpq $node20, 8(%rdx)
jne bad_exit
mov $node20, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $node21, 8(%rdx)
jne bad_exit
mov $node21, %rdx
cmpq $17, (%rdx)
jne bad_exit
cmpq $node22, 8(%rdx)
jne bad_exit
mov $node22, %rdx
cmpq $25, (%rdx)
jne bad_exit
cmpq $node23, 8(%rdx)
jne bad_exit
mov $node23, %rdx
cmpq $16, (%rdx)
jne bad_exit
cmpq $node24, 8(%rdx)
jne bad_exit
mov $node24, %rdx
cmpq $31, (%rdx)
jne bad_exit
cmpq $node25, 8(%rdx)
jne bad_exit
mov $node25, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node26, 8(%rdx)
jne bad_exit
mov $node26, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node27, 8(%rdx)
jne bad_exit
mov $node27, %rdx
cmpq $15, (%rdx)
jne bad_exit
cmpq $node28, 8(%rdx)
jne bad_exit
mov $node28, %rdx
cmpq $5, (%rdx)
jne bad_exit
cmpq $node29, 8(%rdx)
jne bad_exit
mov $node29, %rdx
cmpq $19, (%rdx)
jne bad_exit
cmpq $node30, 8(%rdx)
jne bad_exit
mov $node30, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node31, 8(%rdx)
jne bad_exit
mov $node31, %rdx
cmpq $27, (%rdx)
jne bad_exit
cmpq $node32, 8(%rdx)
jne bad_exit
mov $node32, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $node33, 8(%rdx)
jne bad_exit
mov $node33, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node34, 8(%rdx)
jne bad_exit
mov $node34, %rdx
cmpq $18, (%rdx)
jne bad_exit
cmpq $node35, 8(%rdx)
jne bad_exit
mov $node35, %rdx
cmpq $21, (%rdx)
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
