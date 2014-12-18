%include "io.inc"

%macro addtwo 3
    add %1,%2
    mov %3,%1
%endmacro

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov esi,4
    mov edi,8
    mov ebx,0
    addtwo esi,edi,ebx
    PRINT_UDEC 4,EBX
    ret