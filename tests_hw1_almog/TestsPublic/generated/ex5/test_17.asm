# 9<-2<-9<-1<-12<-3<-14<-1<-2<-5<-13<-11<-14<-8
# src: 13
# dst: 3
.global _start
.section .data
src: .quad 13
dst: .quad 3
head:
.quad node1
node1:
.quad 8
.quad node2
node2:
.quad 14
.quad node3
node3:
.quad 11
.quad node4
node4:
.quad 13
.quad node5
node5:
.quad 5
.quad node6
node6:
.quad 2
.quad node7
node7:
.quad 1
.quad node8
node8:
.quad 14
.quad node9
node9:
.quad 3
.quad node10
node10:
.quad 12
.quad node11
node11:
.quad 1
.quad node12
node12:
.quad 9
.quad node13
node13:
.quad 2
.quad node14
node14:
.quad 9
.quad 0
.section .text
mov $node1, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $11, (%rdx)
jne bad_exit
cmpq $node9, 8(%rdx)
jne bad_exit
mov $node9, %rdx
cmpq $3, (%rdx)
jne bad_exit
cmpq $node5, 8(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $5, (%rdx)
jne bad_exit
cmpq $node6, 8(%rdx)
jne bad_exit
mov $node6, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $node7, 8(%rdx)
jne bad_exit
mov $node7, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $node8, 8(%rdx)
jne bad_exit
mov $node8, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node10, 8(%rdx)
jne bad_exit
mov $node10, %rdx
cmpq $12, (%rdx)
jne bad_exit
cmpq $node11, 8(%rdx)
jne bad_exit
mov $node11, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $node12, 8(%rdx)
jne bad_exit
mov $node12, %rdx
cmpq $9, (%rdx)
jne bad_exit
cmpq $node13, 8(%rdx)
jne bad_exit
mov $node13, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $node14, 8(%rdx)
jne bad_exit
mov $node14, %rdx
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
