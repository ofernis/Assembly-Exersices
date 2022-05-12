.global _start

.section .text

  cmpl $0xDEADBEEF, (destination)
  jne bad_exit
  cmpl $0xDEADBEEF, (source)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
source: .quad 0xCAFECAFE
destination: .quad 0xDEADBEEF
num: .long -0x4

