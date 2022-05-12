.global _start

.section .text

test_start:
	mov $mergedArray, %rax
  	cmpl $10, (%rax)
  	jne bad_exit
  	cmpl $9, 0x04(%rax)
  	jne bad_exit
  	cmpl $8, 0x08(%rax)
  	jne bad_exit
  	cmpl $7, 0x0c(%rax)
  	jne bad_exit
  	cmpl $6, 0x10(%rax)
  	jne bad_exit
  	cmpl $5, 0x14(%rax)
  	jne bad_exit
  	cmpl $4, 0x18(%rax)
  	jne bad_exit
  	cmpl $3, 0x1c(%rax)
  	jne bad_exit
  	cmpl $2, 0x20(%rax)
  	jne bad_exit
  	cmpl $1, 0x24(%rax)
  	jne bad_exit
  	cmpl $0, 0x28(%rax)
  	jne bad_exit

  	movq $60, %rax
  	movq $0, %rdi
  	syscall

bad_exit:
	movq $60, %rax
  	movq $1, %rdi
  	syscall

.section .data
array1: .int 8,7,7,6,5,4,0
array2: .int 10,9,7,6,3,2,1,0
mergedArray: .fill 20, 4, 0xff
