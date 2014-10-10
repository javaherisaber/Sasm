%include "io.inc"

section .data
str2 db 'ali ',0
str3 db 'reza',0
str4 db 'mahdy ',0
str5 db 'javaheri',0
msg1 db 'first test is = ',0
msg2 db 'second test is = ',0

section .bss
str1 resb 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push str3
    push str2
    push str1
    call concat
    add esp,12
    PRINT_STRING msg1
    PRINT_STRING str1
    push str5
    push str4
    push str1
    call concat
    add esp,12
    NEWLINE 
    PRINT_STRING msg2
    PRINT_STRING str1
    
    ret
    
concat :
    mov eax,0
    mov ebx,0
    mov ecx,0
    mov ecx,[esp+4]
    mov eax,[esp+8]
    mov ebx,[esp+12]
back :
    cmp byte [eax],0
    jz again
    mov dl ,byte [eax]
    mov byte [ecx],dl
    inc eax
    inc ecx
    jmp back
again :
    cmp byte [ebx],0
    jz done
    mov dl ,byte [ebx]
    mov byte [ecx],dl
    inc ebx
    inc ecx
    jmp again
done :
    ret