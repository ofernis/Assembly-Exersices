# 38<-32<-1<-6<-32<-23<-1<-40<-15<-27<-34<-27<-22<-4<-33<-10<-14<-6<-4<-20<-18<-18<-33<-34<-7<-15<-22<-36<-23<-23<-30<-5<-39<-15<-23<-8<-19<-7<-16<-21
# src: 13
# dst: 11
.global _start
.section .data
src: .quad 13
dst: .quad 11
head:
.quad node1
node1:
.quad 21
.quad node2
node2:
.quad 16
.quad node3
node3:
.quad 7
.quad node4
node4:
.quad 19
.quad node5
node5:
.quad 8
.quad node6
node6:
.quad 23
.quad node7
node7:
.quad 15
.quad node8
node8:
.quad 39
.quad node9
node9:
.quad 5
.quad node10
node10:
.quad 30
.quad node11
node11:
.quad 23
.quad node12
node12:
.quad 23
.quad node13
node13:
.quad 36
.quad node14
node14:
.quad 22
.quad node15
node15:
.quad 15
.quad node16
node16:
.quad 7
.quad node17
node17:
.quad 34
.quad node18
node18:
.quad 33
.quad node19
node19:
.quad 18
.quad node20
node20:
.quad 18
.quad node21
node21:
.quad 20
.quad node22
node22:
.quad 4
.quad node23
node23:
.quad 6
.quad node24
node24:
.quad 14
.quad node25
node25:
.quad 10
.quad node26
node26:
.quad 33
.quad node27
node27:
.quad 4
.quad node28
node28:
.quad 22
.quad node29
node29:
.quad 27
.quad node30
node30:
.quad 34
.quad node31
node31:
.quad 27
.quad node32
node32:
.quad 15
.quad node33
node33:
.quad 40
.quad node34
node34:
.quad 1
.quad node35
node35:
.quad 23
.quad node36
node36:
.quad 32
.quad node37
node37:
.quad 6
.quad node38
node38:
.quad 1
.quad node39
node39:
.quad 32
.quad node40
node40:
.quad 38
.quad 0
.section .text
mov $node1, %rdx
cmpq $21, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $16, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $19, (%rdx)
jne bad_exit
cmpq $node5, 8(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $node6, 8(%rdx)
jne bad_exit
mov $node6, %rdx
cmpq $23, (%rdx)
jne bad_exit
cmpq $node7, 8(%rdx)
jne bad_exit
mov $node7, %rdx
cmpq $15, (%rdx)
jne bad_exit
cmpq $node8, 8(%rdx)
jne bad_exit
mov $node8, %rdx
cmpq $39, (%rdx)
jne bad_exit
cmpq $node9, 8(%rdx)
jne bad_exit
mov $node9, %rdx
cmpq $5, (%rdx)
jne bad_exit
cmpq $node10, 8(%rdx)
jne bad_exit
mov $node10, %rdx
cmpq $30, (%rdx)
jne bad_exit
cmpq $node11, 8(%rdx)
jne bad_exit
mov $node11, %rdx
cmpq $23, (%rdx)
jne bad_exit
cmpq $node12, 8(%rdx)
jne bad_exit
mov $node12, %rdx
cmpq $23, (%rdx)
jne bad_exit
cmpq $node13, 8(%rdx)
jne bad_exit
mov $node13, %rdx
cmpq $36, (%rdx)
jne bad_exit
cmpq $node14, 8(%rdx)
jne bad_exit
mov $node14, %rdx
cmpq $22, (%rdx)
jne bad_exit
cmpq $node15, 8(%rdx)
jne bad_exit
mov $node15, %rdx
cmpq $15, (%rdx)
jne bad_exit
cmpq $node16, 8(%rdx)
jne bad_exit
mov $node16, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node17, 8(%rdx)
jne bad_exit
mov $node17, %rdx
cmpq $34, (%rdx)
jne bad_exit
cmpq $node18, 8(%rdx)
jne bad_exit
mov $node18, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node19, 8(%rdx)
jne bad_exit
mov $node19, %rdx
cmpq $18, (%rdx)
jne bad_exit
cmpq $node20, 8(%rdx)
jne bad_exit
mov $node20, %rdx
cmpq $18, (%rdx)
jne bad_exit
cmpq $node21, 8(%rdx)
jne bad_exit
mov $node21, %rdx
cmpq $20, (%rdx)
jne bad_exit
cmpq $node22, 8(%rdx)
jne bad_exit
mov $node22, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node23, 8(%rdx)
jne bad_exit
mov $node23, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node24, 8(%rdx)
jne bad_exit
mov $node24, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $node25, 8(%rdx)
jne bad_exit
mov $node25, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node26, 8(%rdx)
jne bad_exit
mov $node26, %rdx
cmpq $33, (%rdx)
jne bad_exit
cmpq $node27, 8(%rdx)
jne bad_exit
mov $node27, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node28, 8(%rdx)
jne bad_exit
mov $node28, %rdx
cmpq $22, (%rdx)
jne bad_exit
cmpq $node29, 8(%rdx)
jne bad_exit
mov $node29, %rdx
cmpq $27, (%rdx)
jne bad_exit
cmpq $node30, 8(%rdx)
jne bad_exit
mov $node30, %rdx
cmpq $34, (%rdx)
jne bad_exit
cmpq $node31, 8(%rdx)
jne bad_exit
mov $node31, %rdx
cmpq $27, (%rdx)
jne bad_exit
cmpq $node32, 8(%rdx)
jne bad_exit
mov $node32, %rdx
cmpq $15, (%rdx)
jne bad_exit
cmpq $node33, 8(%rdx)
jne bad_exit
mov $node33, %rdx
cmpq $40, (%rdx)
jne bad_exit
cmpq $node34, 8(%rdx)
jne bad_exit
mov $node34, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $node35, 8(%rdx)
jne bad_exit
mov $node35, %rdx
cmpq $23, (%rdx)
jne bad_exit
cmpq $node36, 8(%rdx)
jne bad_exit
mov $node36, %rdx
cmpq $32, (%rdx)
jne bad_exit
cmpq $node37, 8(%rdx)
jne bad_exit
mov $node37, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node38, 8(%rdx)
jne bad_exit
mov $node38, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $node39, 8(%rdx)
jne bad_exit
mov $node39, %rdx
cmpq $32, (%rdx)
jne bad_exit
cmpq $node40, 8(%rdx)
jne bad_exit
mov $node40, %rdx
cmpq $38, (%rdx)
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
