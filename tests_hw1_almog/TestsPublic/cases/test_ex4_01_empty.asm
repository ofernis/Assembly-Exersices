.global _start

.section .text

  mov $root, %rax
  cmpq $new_node, (%rax)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
root:
    .quad 0

new_node:
    .quad 15, 0, 0
