.global _start

.section .text
    
  mov $root, %rax
  cmpq $A, (%rax)
  jne bad_exit

  mov $A, %rax
  cmpq $20, (%rax)
  jne bad_exit
  cmpq $B, 8(%rax)
  jne bad_exit
  cmpq $C, 16(%rax)
  jne bad_exit

  mov $B, %rax
  cmpq $10, (%rax)
  jne bad_exit
  cmpq $0, 8(%rax)
  jne bad_exit
  cmpq $D, 16(%rax)
  jne bad_exit

  mov $C, %rax
  cmpq $26, (%rax)
  jne bad_exit
  cmpq $0, 8(%rax)
  jne bad_exit
  cmpq $0, 16(%rax)
  jne bad_exit

  mov $D, %rax
  cmpq $13, (%rax)
  jne bad_exit
  cmpq $0, 8(%rax)
  jne bad_exit
  cmpq $0, 16(%rax)
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
    .quad 13, 0, 0
