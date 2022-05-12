.global _start


.section .text

test_HW1:
 
  cmpq $1, A 
  jne bad_exit
  
  
  cmpq $2, B 
  jne bad_exit
  
  cmpq $3, C 
  jne bad_exit
  
  
  cmpq $8, D 
  jne bad_exit
  

  cmpq $D, head  
  jne bad_exit

  cmpq $0, A+8
  jne bad_exit

  cmpq $C, B+8
  jne bad_exit
 
  cmpq $A, C+8
  jne bad_exit
  
  cmpq $B, D+8
  jne bad_exit
  
  
  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
head:
    .quad A 

A:
    .quad 1 
    .quad B

B:
    .quad 2 
    .quad C

C:
    .quad 3 
    .quad D

D:
    .quad 8 
    .quad 0

src:
    .quad 1

dst:
    .quad 8
