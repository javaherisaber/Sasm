%include "io.inc"
section .data
String1 db 'assembly language program',0
Length dw $-String1-1
section .text
global CMAIN
CMAIN:
    mov ESI , String1
    mov ECX,[Length]
    add ESI,ECX
    dec ESI
    Back:
    mov DL,[ESI]
    PRINT_CHAR DL
    DEC ESI
    LOOP Back
    ret