# 4<-6<-2<-6<-5<-6
# src: 1
# dst: 1
.global _start
.section .data
src: .quad 1
dst: .quad 1
head:
.quad node5
node5:
.quad 6
.quad node4
node4:
.quad 5
.quad node3
node3:
.quad 6
.quad node2
node2:
.quad 2
.quad node1
node1:
.quad 6
.quad node0
node0:
.quad 4
.quad 0
.section .text
mov $node5, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $5, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $node1, 8(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node0, 8(%rdx)
jne bad_exit
mov $node0, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
mov $head, %rdx
cmpq $node5, (%rdx)
jne bad_exit
exit:
 movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
