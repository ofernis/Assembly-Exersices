.global _start

.section .text

  mov $0, %rcx
test_loop_HW1:
  cmp $9, %rcx
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
array1: .long 10, 7, 7, 3, 2, 1, 0
array2: .long 9, 7 ,7 , 7, 4 ,2 , 2, 0

mergedArray: .fill 15, 4, 0xFFFFFFFF
# mergedArray: .long 10, 9, 7, 4, 3, 2, 1, 0, 0xFFFFFFFF
expectedArray: .long 10, 9, 7, 4, 3, 2, 1, 0, 0xFFFFFFFF
