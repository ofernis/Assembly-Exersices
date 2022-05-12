
#      _______14
#     /
#  __10___
# /       \
#0        _13
# \      /
#  1    12
#
.global _start
.section .data
node0:
.quad 1
.quad 0
.quad 0
node1:
.quad 0
.quad 0
.quad node0
node2:
.quad 12
.quad 0
.quad 0
node3:
.quad 13
.quad node2
.quad 0
node4:
.quad 10
.quad node1
.quad node3
node5:
.quad 14
.quad node4
.quad 0
root:
.quad node5
new_node: .quad 21,0,0
.section .text
mov $node0, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $0, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $node0, 16(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $12, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node1, 8(%rdx)
jne bad_exit
cmpq $node3, 16(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
cmpq $new_node, 16(%rdx)
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
