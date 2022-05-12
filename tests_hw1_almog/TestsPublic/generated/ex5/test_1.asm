# 2<-1
# src: 2
# dst: 1
.global _start
.section .data
src: .quad 2
dst: .quad 1
head:
.quad node1
node1:
.quad 1
.quad node0
node0:
.quad 2
.quad 0
.section .text
mov $node0, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $node1, 8(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
mov $head, %rdx
cmpq $node0, (%rdx)
jne bad_exit
exit:
 movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
