%include "io.inc"

section .data
result dd 0
prompt db "Enter a Number ",0
msg1 db " !",0
msg2 db " = ",0

;this calculates up to 12!

section .bss
input resw 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    PRINT_STRING prompt
    NEWLINE
    GET_DEC 1,input ;gets 1 decimal from input
    mov EAX,[input]
    mov ECX,EAX
Back:dec ECX
    mul ECX
    mov EBX,ECX
    dec EBX ;if this value got to zero loop will be end
    jnz Back
    mov [result],EAX
    PRINT_UDEC 1,[input]
    PRINT_STRING msg1
    PRINT_STRING msg2
    PRINT_UDEC 4,[result]
    NEWLINE
    
    ret
    