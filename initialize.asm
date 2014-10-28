
%include "io.inc"
section .data
x dd 1,5,2,18,8888,168
n dd 4
sum dd 0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
   push x
   push n
   call init
   add esp,8
   top:
   add ebx,[ecx]
   add ecx,4
   dec dword [eax]  
   jnz top
   done:mov[sum],ebx
   PRINT_UDEC 4,[sum]
   
    ret
    init:
    mov ebx,0
    mov ecx,[esp+8] ; ecx <- x
    mov eax,[esp+4] ; eax <- n
    
    ret