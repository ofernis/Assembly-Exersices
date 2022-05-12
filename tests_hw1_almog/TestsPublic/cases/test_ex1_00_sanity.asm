.global _start

.section .text

  mov $CountBits, %rax
  cmpl $3, (%rax)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
num: .quad 0b010101
CountBits: .long 0x0
