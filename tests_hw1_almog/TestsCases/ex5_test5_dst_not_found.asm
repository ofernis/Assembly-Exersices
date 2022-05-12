.global _start

.section .text

test_start:
  	cmpq $A, (head)
  	jne bad_exit
  	cmpl $4, (A)
  	jne bad_exit
  	cmpl $1, (A+0x04)
  	jne bad_exit
  	cmpq $B, (A+0x08)
  	jne bad_exit

  	cmpl $6, (B)
  	jne bad_exit
  	cmpl $2, (B+0x04)
  	jne bad_exit
  	cmpq $C, (B+0x08)
  	jne bad_exit

  	cmpl $-5, (C)
  	jne bad_exit
  	cmpl $3, (C+0x04)
  	jne bad_exit
  	cmpq $D, (C+0x08)
  	jne bad_exit

  	cmpl $1, (D)
  	jne bad_exit
  	cmpl $4, (D+0x04)
  	jne bad_exit
  	cmpq $0, (D+0x08)
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
	.int 1
	.int 4
	.quad 0
C:
	.int -5
	.int 3
	.quad D
B:
	.int 6
	.int 2
	.quad C
A:
	.int 4
	.int 1
	.quad B
head:
	.quad A

src: .quad 6
dst: .quad -1

