.global _start

.section .text

  cmpw $0xCCDD, (destination)
  jne bad_exit
  cmpl $0xAABBCCDD, (source)
  jne bad_exit

  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
destination: .short 0xCAFE
source: .quad 0xAABBCCDD
num: .long 0x2

