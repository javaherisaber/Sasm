%include "io.inc"

section .data 
input db 9,7,2,53,1,144,42
length db $-input

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp,esp
    sub esp,16
    
    mov [ebp+4],dword 8
    mov esi,[ebp+4]
    PRINT_UDEC 4,ESI
    mov edi,input
    mov bl,byte [length]
comeback :
    push ebp
    mov ebp,esp
    
    
    
    
    
    
    
    
outer :
    mov ecx,dword [length]
    dec ebx
    mov edi,input
back  :
    mov esi,dword [edi]
    cmp esi,dword [edi+1]
    jc change
    jmp back
change :
    mov eax,esi
    ret