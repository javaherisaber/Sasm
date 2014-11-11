%include "io.inc"
section .data
result dw 0
prompt db "Enter a Number ",0
msg1 db "! ",0
msg2 db " = ",0
section .bss
input resb 1

section .text
global CMAIN
CMAIN:
    
    PRINT_STRING prompt
    NEWLINE
    GET_DEC 1,input     
    mov al,[input]
    mov cl,al
Back:dec cl
    mul cl
    mov bl,cl
    dec bl
    jnz Back
    mov [result],AX
    PRINT_STRING msg1
    PRINT_UDEC 1,[input]
    PRINT_STRING msg2
    PRINT_DEC 2,[result]
    NEWLINE
    
    ret
    