
# empty

.global _start
.section .data
root:
.quad 0
new_node: .quad 8,0,0
.section .text
mov $root, %rdx
cmpq $new_node, (%rdx)
jne bad_exit
mov $new_node, %rdx
cmpq $8, (%rdx)
jne bad_exit
cmpq $0, 8(%rdx)
jne bad_exit
cmpq $0, 16(%rdx)
jne bad_exit
exit:
movq $60, %rax
movq $0, %rdi
syscall
bad_exit:
movq $60, %rax
movq $1, %rdi
syscall
