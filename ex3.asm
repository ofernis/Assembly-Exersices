.global _start

.section .text
_start:
    xor %rbx, %rbx
    xor %rcx, %rcx 
    xor %rdi, %rdi
    xor %rsi, %rsi
    xor %rax, %rax
    xor %r10, %r10
    leaq mergedArray, %rax 
    movl $-1, %r8d # %r8d should hold the value of the previous node in mergedArray

LOOP_HW1:
    movl array1(,%edi,4), %ebx
    movl array2(,%esi,4), %ecx
    leal (%ebx,%ecx,1), %r10d
    cmpq $0x0, %r10
    je END_HW1 
    cmpq %rcx, %rbx
    jg  ADD_FROM_ARR1_HW1
    movl -4(%eax), %r8d
    incl %esi
    cmpq %rcx, %r8
    je LOOP_HW1
    movl %ecx, (%rax)
    add $0x4, %rax
    jmp LOOP_HW1
    
ADD_FROM_ARR1_HW1:
    #cmp mergedArray, %rax
    #je .FIRST_IT_HW1
    movl -4(%rax), %r8d
    incl %edi
    cmpq %rbx, %r8
    je LOOP_HW1
    movl %ebx, (%rax)
    add $0x4, %rax
    jmp LOOP_HW1

END_HW1:
    movl $0x0, (%rax)
    
