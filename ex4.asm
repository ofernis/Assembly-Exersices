.global _start

.section .text
_start:
    movq root, %rax
    cmpq $0x0, %rax
    je EMPTY_TREE_HW1
    movq new_node, %rbx
    
LOOP_HW1:
    movq (%rax), %rcx
    cmpq %rcx, %rbx
    je END_HW1 #in that case the new_node value already exists in tree
    leaq (%rax), %rdi #store current node adress
    jg RIGHT_SON_HW1
    jmp LEFT_SON_HW1

RIGHT_SON_HW1:
    movq 16(%rax), %rax
    cmpq $0x0, %rax
    jne LOOP_HW1 #current node is not a leaf
    movq $new_node, 16(%rdi)
    jmp END_HW1

LEFT_SON_HW1:
    movq 8(%rax), %rax
    cmpq $0x0, %rax
    jne LOOP_HW1 #current node is not a leaf
    movq $new_node, 8(%rdi)
    jmp END_HW1
     
EMPTY_TREE_HW1:
    movq $new_node, root
     
END_HW1: