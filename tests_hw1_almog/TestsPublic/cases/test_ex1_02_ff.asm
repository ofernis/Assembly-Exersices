.global _start

.section .text

  mov $CountBits, %rax
  cmpl $64, (%rax)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
num: .quad 0xFFFFFFFFFFFFFFFF
CountBits: .long 0x0
