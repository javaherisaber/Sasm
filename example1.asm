

%include "io.inc"
section .data
x dd 1,5,2,18,8888,168
n dd 3
sum dd 0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
push dword x
push dword 168 
push dword 6
call findfirst
PRINT_DEC 4,eax
;add esp,12   
ret

findfirst:
mov ecx,dword[esp+4] ; 6
mov ebx,dword[esp+8] ; 168
mov eax,dword[esp+12] ; x
mov edx,eax 
top:
cmp ebx,dword[eax]
jz found
dec ecx
jz notthere
add eax,dword 4
jmp top

found:
sub eax,edx  
add eax,4  
shr eax,2  
ret 12

notthere:
mov eax,-1
ret 12