%include "io.inc"

section .data 
input dd 9,7,2,53,1,144,42
length dd $-input

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ecx,dword[input]
    mov ebx,dword[input+4]
    mov dword [input],ebx
    mov dword [input+4],ecx
    PRINT_UDEC 4,input
    
ret