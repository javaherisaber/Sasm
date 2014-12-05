%include "io.inc"

section .bss
input resb 1  

;NOTICE ::: input value is like this => ali kusha have shoe$

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ebx,00H
    GET_STRING input,100 ;max length of input gonna be 100
    mov esi,input
    back: 
    cmp byte [esi],'a' ;each char is 1 byte only
    jz increment       ;if current input is equal with 'a' we increase pointer and index
    cmp byte [esi],'e' 
    jz increment
    cmp byte [esi],'i'
    jz increment
    cmp byte [esi],'u'
    jz increment
    cmp byte [esi],'o'
    jz increment
    cmp byte [esi],'$' ;this stage is added because of increment lable to balance our loop
    jz done
    inc esi
    cmp byte [esi],'$' ;end of the input is determined as $
    jnz back
    jmp done
    increment:
    inc ebx ;index for counting vowel chars
    inc esi ;pointer to the input
    jmp back
    done:
    PRINT_UDEC 1,ebx
    ret