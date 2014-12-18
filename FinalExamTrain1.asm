%include "io.inc"


mynum equ 500
%define msg 'HELLO!'
%assign size 234

section .bss
input resd 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
        GET_DEC 2,input
        GET_DEC 2,input+4
        push dword [input]
        push dword [input+4]
        call MULT
        add esp,8
        NEWLINE 
        PRINT_STRING  msg
        NEWLINE
        PRINT_UDEC 2,size
        NEWLINE
        mov esi,mynum
        PRINT_UDEC 2,esi
    ret

MULT:
    mov esi,0
    mov edi,0
    mov esi,[esp+4]
    mov edi,[esp+8]
    PRINT_DEC 2,edi
    NEWLINE
    PRINT_DEC 2,esi
    ret