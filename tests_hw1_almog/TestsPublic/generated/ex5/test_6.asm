# 1
# src: 1
# dst: 1
.global _start
.section .data
src: .quad 1
dst: .quad 1
head:
.quad node1
node1:
.quad 1
.quad 0
.section .text
mov $node1, %rdx
cmpq $1, (%rdx)
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
