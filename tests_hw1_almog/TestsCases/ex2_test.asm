.global _start

.section .text

test_start:
	lea destination, %rbx
	movb (%rbx), %al
  	cmp $0x1, %al
  	jne bad_exit

  	movb 1(%rbx), %al
  	cmp $0x2, %al
  	jne bad_exit

  	movb 2(%rbx), %al
  	cmp $0x3, %al
  	jne bad_exit

  	movb 3(%rbx), %al
  	cmp $0x4, %al
  	jne bad_exit

  	movb 4(%rbx), %al
  	cmp $0x5, %al
  	jne bad_exit

  	movq $60, %rax
  	movq $0, %rdi
  	syscall

bad_exit:
	movq $60, %rax
  	movq $1, %rdi
  	syscall

.section .data
num: .long 5
source: .byte 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
destination: .zero 30


