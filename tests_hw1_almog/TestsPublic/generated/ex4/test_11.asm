
#         _12
#        /
#    ___11
#   /
#  6
# / \
#3   10
#
.global _start
.section .data
node0:
.quad 3
.quad 0
.quad 0
node1:
.quad 10
.quad 0
.quad 0
node2:
.quad 6
.quad node0
.quad node1
node3:
.quad 11
.quad node2
.quad 0
node4:
.quad 12
.quad node3
.quad 0
root:
.quad node4
new_node: .quad 18,0,0
.section .text
mov $node0, %rdx
cmpq $3, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node1, %rdx
cmpq $10, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node2, %rdx
cmpq $6, (%rdx)
jne bad_exit
cmpq $node0, 8(%rdx)
jne bad_exit
cmpq $node1, 16(%rdx)
jne bad_exit
mov $node3, %rdx
cmpq $11, (%rdx)
jne bad_exit
cmpq $node2, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
mov $node4, %rdx
cmpq $12, (%rdx)
jne bad_exit
cmpq $node3, 8(%rdx)
jne bad_exit
cmpq $new_node, 16(%rdx)
jne bad_exit
mov $root, %rdx
cmpq $node4, (%rdx)
jne bad_exit
exit:
 movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
