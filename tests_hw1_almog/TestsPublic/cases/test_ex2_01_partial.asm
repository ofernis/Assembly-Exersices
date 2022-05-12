.global _start

.section .text

  cmpl $0xDEADBABE, (destination)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
source: .quad 0xCAFEBABE
destination: .quad 0xDEADBEEF
num: .long 0x2

