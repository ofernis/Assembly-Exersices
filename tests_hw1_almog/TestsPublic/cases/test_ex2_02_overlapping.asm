.global _start

.section .text

  cmpl $0xAADDCAFE, (destination)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
source: .short 0xCAFE
destination: .quad 0xAABBCCDD
num: .long 0x3

