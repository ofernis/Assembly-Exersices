.global _start

.section .text

test_start:
  	cmpq $A, (head)
  	jne bad_exit
  	cmpl $4, (A)
  	jne bad_exit
  	cmpq $D, (A+0x08)
  	jne bad_exit

  	cmpl $1, (D)
  	jne bad_exit
  	cmpq $C, (D+0x08)
  	jne bad_exit

  	cmpl $-5, (C)
  	jne bad_exit
  	cmpq $B, (C+0x08)
  	jne bad_exit

  	cmpl $6, (B)
  	jne bad_exit
  	cmpq $0, (B+0x08)
  	jne bad_exit

  	movq $60, %rax
  	movq $0, %rdi
  	syscall

bad_exit:
	movq $60, %rax
  	movq $1, %rdi
  	syscall

.section .data
D:
	.quad 1
	.quad 0
C:
	.quad -5
	.quad D
B:
	.quad 6
	.quad C
A:
	.quad 4
	.quad B
head:
	.quad A

src: .quad 6
dst: .quad 1

