
.global _start

.section .text

test_start:
	mov $mergedArray, %rax

    
    cmpl $4257496822, 0(%rax)
    jne bad_exit

    cmpl $4187311925, 4(%rax)
    jne bad_exit

    cmpl $4172135271, 8(%rax)
    jne bad_exit

    cmpl $4057482874, 12(%rax)
    jne bad_exit

    cmpl $4015858359, 16(%rax)
    jne bad_exit

    cmpl $3867704358, 20(%rax)
    jne bad_exit

    cmpl $3816561363, 24(%rax)
    jne bad_exit

    cmpl $3771267822, 28(%rax)
    jne bad_exit

    cmpl $3535311316, 32(%rax)
    jne bad_exit

    cmpl $3396713057, 36(%rax)
    jne bad_exit

    cmpl $3301608409, 40(%rax)
    jne bad_exit

    cmpl $3284638863, 44(%rax)
    jne bad_exit

    cmpl $3190253015, 48(%rax)
    jne bad_exit

    cmpl $3125861805, 52(%rax)
    jne bad_exit

    cmpl $3088292341, 56(%rax)
    jne bad_exit

    cmpl $3073380328, 60(%rax)
    jne bad_exit

    cmpl $2621297981, 64(%rax)
    jne bad_exit

    cmpl $2515377639, 68(%rax)
    jne bad_exit

    cmpl $2511849221, 72(%rax)
    jne bad_exit

    cmpl $2177137970, 76(%rax)
    jne bad_exit

    cmpl $2137539078, 80(%rax)
    jne bad_exit

    cmpl $1971780927, 84(%rax)
    jne bad_exit

    cmpl $1872019802, 88(%rax)
    jne bad_exit

    cmpl $1809870709, 92(%rax)
    jne bad_exit

    cmpl $1801845171, 96(%rax)
    jne bad_exit

    cmpl $1792344745, 100(%rax)
    jne bad_exit

    cmpl $1684360017, 104(%rax)
    jne bad_exit

    cmpl $1543979688, 108(%rax)
    jne bad_exit

    cmpl $1539295042, 112(%rax)
    jne bad_exit

    cmpl $1434263210, 116(%rax)
    jne bad_exit

    cmpl $1427136149, 120(%rax)
    jne bad_exit

    cmpl $1341747087, 124(%rax)
    jne bad_exit

    cmpl $1329262896, 128(%rax)
    jne bad_exit

    cmpl $1254897091, 132(%rax)
    jne bad_exit

    cmpl $1177618138, 136(%rax)
    jne bad_exit

    cmpl $1138858033, 140(%rax)
    jne bad_exit

    cmpl $942733419, 144(%rax)
    jne bad_exit

    cmpl $900591645, 148(%rax)
    jne bad_exit

    cmpl $882124120, 152(%rax)
    jne bad_exit

    cmpl $780007478, 156(%rax)
    jne bad_exit

    cmpl $710225895, 160(%rax)
    jne bad_exit

    cmpl $557843377, 164(%rax)
    jne bad_exit

    cmpl $222700931, 168(%rax)
    jne bad_exit

    cmpl $162724521, 172(%rax)
    jne bad_exit

    cmpl $129056787, 176(%rax)
    jne bad_exit

    cmpl $126352945, 180(%rax)
    jne bad_exit

    cmpl $27592648, 184(%rax)
    jne bad_exit

    cmpl $0, 188(%rax)
    jne bad_exit


    movq $60, %rax
    movq $0, %rdi
    syscall

bad_exit:
    movq $60, %rax
    movq $1, %rdi
    syscall

.section .data
array1: .int 4257496822, 4172135271, 4057482874, 4015858359, 3867704358, 3816561363, 3771267822, 3535311316, 3284638863, 3190253015, 3125861805, 3088292341, 2621297981, 2515377639, 2511849221, 2177137970, 2137539078, 1801845171, 1543979688, 1539295042, 1427136149, 1329262896, 1254897091, 1177618138, 1138858033, 882124120, 222700931, 129056787, 126352945, 0
array2: .int 4187311925, 3396713057, 3301608409, 3284638863, 3088292341, 3073380328, 2621297981, 2515377639, 2137539078, 1971780927, 1872019802, 1809870709, 1792344745, 1684360017, 1539295042, 1539295042, 1434263210, 1341747087, 1329262896, 1329262896, 1254897091, 1177618138, 942733419, 900591645, 882124120, 780007478, 710225895, 557843377, 162724521, 27592648, 0
mergedArray: .zero 48
