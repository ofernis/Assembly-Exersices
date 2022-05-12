
#  ______4______
# /             \
#0__           __10___
#   \         /       \
#    2       8        _13
#   / \     / \      /   \
#  1   3   6   9    12    14
#
.global _start
.section .data
node0:
.quad 1
.quad 0
.quad 0
node1:
.quad 3
.quad 0
.quad 0
node2:
.quad 2
.quad node0
.quad node1
node3:
.quad 0
.quad 0
.quad node2
node4:
.quad 6
.quad 0
.quad 0
node5:
.quad 9
.quad 0
.quad 0
node6:
.quad 8
.quad node4
.quad node5
node7:
.quad 12
.quad 0
.quad 0
node8:
.quad 14
.quad 0
.quad 0
node9:
.quad 13
.quad node7
.quad node8
node10:
.quad 10
.quad node6
.quad node9
node11:
.quad 4
.quad node3
.quad node10
root:
.quad node11
new_node: .quad 18,0,0
.section .text
mov $node0, %rdx
cmpq $1, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $3, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $node0, 8(%rdx)
jne bad_exit
cmpq $node1, 16(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $0, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $node2, 16(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $9, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node6, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
cmpq $node5, 16(%rdx)
jne bad_exit
mov $node7, %rdx
cmpq $12, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node8, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $new_node, 16(%rdx)
jne bad_exit
mov $node9, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $node7, 8(%rdx)
jne bad_exit
cmpq $node8, 16(%rdx)
jne bad_exit
mov $node10, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $node6, 8(%rdx)
jne bad_exit
cmpq $node9, 16(%rdx)
jne bad_exit
mov $node11, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
cmpq $node10, 16(%rdx)
jne bad_exit
mov $root, %rdx
cmpq $node11, (%rdx)
jne bad_exit
exit:
 movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
