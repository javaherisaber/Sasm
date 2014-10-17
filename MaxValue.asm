%include "io.inc"
section .data
List db 0,1,1,98,01,13,99,18,36
Result db 0
section .text
global CMAIN
CMAIN:
    mov ESI , List
    mov al,00H
    mov ECX,0AH
    Back:
    cmp al,[esi]
    jnc Ahead
    mov al,[esi]
    Ahead:
    inc ESI
    LOOP Back
    mov [Result],al
    PRINT_DEC 1,Result
    ret