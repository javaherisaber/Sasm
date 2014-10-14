;for running properly you should remove io.inc in the top
;underscore is important
;befor call printf you should push parameters into the stack
;
section .data
x:
    dd 1
    dd 2
    dd 5
    dd 18
sum:
    dd 0
section .rodata
fmt: db 'sum=%d',10,0  ; 10 is newline as ascii number
section .text
extern  _printf
global _main
_main:
    mov eax,4
    mov ebx,0
    mov ecx,x
  top:
    add ebx,[ecx]
    add ecx,4
    dec eax
    jnz top
printsum: 
    push ebx;this is our integers 
    push DWORD fmt;this is our string
    call _printf
    add esp,8 ;clearing stack because of our parameters
    ret