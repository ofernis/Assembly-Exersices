.global _start

.section .text

  mov $0, %rcx
test_loop_HW1:
  cmp $2, %rcx
  je test_end_loop_HW1
  mov $mergedArray, %rax
  mov $expectedArray, %rbx
  mov (%rax, %rcx, 4), %eax
  mov (%rbx, %rcx, 4), %ebx
  cmp %eax, %ebx
  jne bad_exit
  inc %rcx
  jmp test_loop_HW1

test_end_loop_HW1:
  movq $60, %rax
  movq $0, %rdi
  syscall

bad_exit:
  movq $60, %rax
  movq $1, %rdi
  syscall

.section .data
array1: .long 1, 0
array2: .long 1, 0

mergedArray: .fill 15, 4, 0xFFFFFFFF
expectedArray: .long 1, 0
