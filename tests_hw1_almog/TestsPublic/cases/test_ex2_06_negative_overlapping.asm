.global _start

.section .text

  cmpw $0xAABE, (source)
  jne bad_exit
  cmpl $0xBEEFAAEF, (destination)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
source: .short 0xDEAD
destination: .long 0xBEEFAABE
num: .long -0x3

