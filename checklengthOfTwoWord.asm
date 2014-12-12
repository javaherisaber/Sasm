%include "io.inc"

section .data 
pass db 'my name is mehdy',0
length dw $-pass-1

;         input is like this : my name is mehdy$

section .bss
input resb 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp         ; for correct debugging
    GET_STRING input,100
    mov esi,pass         ;pointer to pass 
    mov edi,input        ;pointer to input
    mov ebx,00H          ;index of input length
    back:
    mov al,byte [esi]    ;get current char of pass
    mov cl,byte [edi]    ;get current char of input
    cmp al,cl            ;if they are equal Zero flag will be 1
    jz increment         ;if zero flag is 1 jump to increment label
    cmp byte cl,'$'
    jz done 
    inc edi
    inc esi
    cmp byte cl,'$'
    jnz back
    jmp done
    increment:
    inc ebx
    inc edi
    inc esi
    jmp back
    done:
    cmp bl,byte [length]      ;if our index is equal to length go to equal label
    jz equal
    jmp notequal
    equal : PRINT_UDEC 1,1
    jmp endofit
    notequal : PRINT_DEC 1,-1
    endofit:
    ret