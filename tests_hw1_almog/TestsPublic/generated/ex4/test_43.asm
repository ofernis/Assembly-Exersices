
#      ____7__
#     /       \
#    4__       9___
#   /   \     /    \
#  3     6   8     _14
# /     /         /
#2     5         13
#
.global _start
.section .data
node0:
.quad 2
.quad 0
.quad 0
node1:
.quad 3
.quad node0
.quad 0
node2:
.quad 5
.quad 0
.quad 0
node3:
.quad 6
.quad node2
.quad 0
node4:
.quad 4
.quad node1
.quad node3
node5:
.quad 8
.quad 0
.quad 0
node6:
.quad 13
.quad 0
.quad 0
node7:
.quad 14
.quad node6
.quad 0
node8:
.quad 9
.quad node5
.quad node7
node9:
.quad 7
.quad node4
.quad node8
root:
.quad node9
new_node: .quad 23,0,0
.section .text
mov $node0, %rdx
cmpq $2, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $3, (%rdx)
jne bad_exit
cmpq $node0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $5, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $4, (%rdx)
jne bad_exit
cmpq $node1, 8(%rdx)
jne bad_exit
cmpq $node3, 16(%rdx)
jne bad_exit
mov $node5, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node6, %rdx
cmpq $13, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node7, %rdx
cmpq $14, (%rdx)
jne bad_exit
cmpq $node6, 8(%rdx)
jne bad_exit
cmpq $new_node, 16(%rdx)
jne bad_exit
mov $node8, %rdx
cmpq $9, (%rdx)
jne bad_exit
cmpq $node5, 8(%rdx)
jne bad_exit
cmpq $node7, 16(%rdx)
jne bad_exit
mov $node9, %rdx
cmpq $7, (%rdx)
jne bad_exit
cmpq $node4, 8(%rdx)
jne bad_exit
cmpq $node8, 16(%rdx)
jne bad_exit
mov $root, %rdx
cmpq $node9, (%rdx)
jne bad_exit
exit:
 movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
