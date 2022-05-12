.global _start

.section .text

test_start:
  	cmpq $A, (root)
  	jne bad_exit
  	cmpq $20, (A)
  	jne bad_exit
  	cmpq $B, (A+0x08)
  	jne bad_exit
  	cmpq $C, (A+0x10)
  	jne bad_exit

  	cmpq $10, (B)
  	jne bad_exit
  	cmpq $0, (B+0x08)
  	jne bad_exit
  	cmpq $D, (B+0x10)
  	jne bad_exit

  	cmpq $26, (C)
  	jne bad_exit
  	cmpq $0, (C+0x08)
  	jne bad_exit
  	cmpq $new_node, (C+0x10)
  	jne bad_exit

  	cmpq $13, (D)
  	jne bad_exit
  	cmpq $0, (D+0x08)
  	jne bad_exit
  	cmpq $0, (D+0x10)
  	jne bad_exit

  	movq $60, %rax
  	movq $0, %rdi
  	syscall

bad_exit:
	movq $60, %rax
  	movq $1, %rdi
  	syscall

.section .data
root:
 .quad A
A:
 .quad 20
 .quad B
 .quad C
B:
 .quad 10
 .quad 0
 .quad D
C:
 .quad 26
 .quad 0
 .quad 0
D:
 .quad 13
 .quad 0
 .quad 0

new_node:
 .quad 30
 .quad 0
 .quad 0

