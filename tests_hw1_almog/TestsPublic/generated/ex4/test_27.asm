
#      _12
#     /   \
#  __11    13
# /          \
#2            14
# \
#  4
#
.global _start
.section .data
node0:
.quad 4
.quad 0
.quad 0
node1:
.quad 2
.quad 0
.quad node0
node2:
.quad 11
.quad node1
.quad 0
node3:
.quad 14
.quad 0
.quad 0
node4:
.quad 13
.quad 0
.quad node3
node5:
.quad 12
.quad node2
.quad node4
root:
.quad node5
new_node: .quad 7,0,0
.section .text
mov $node0, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $new_node, 16(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $node0, 16(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $11, (%rdx)
jne bad_exit
cmpq $node1, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $node3, 16(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $12, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
cmpq $node4, 16(%rdx)
jne bad_exit
mov $root, %rdx
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
