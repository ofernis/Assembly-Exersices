.global _start

.section .text

  mov $D, %rax
  cmpq $new_node, 16(%rax)
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
    .quad A 

A:
    .quad 20
    .quad B
    .quad C

B:
    .quad 10 
    .quad 0 
    .quad D

C:
    .quad 26
    .quad 0
    .quad 0

D:
    .quad 13
    .quad 0
    .quad 0

new_node:
    .quad 15, 0, 0
