section .bss
input resd 1
section .rodata ; this is read only section
fmt: db 'you entered %d as input',10,0
fmtin db '%d',0
section .text
extern _scanf
extern _printf
global _main
_main:
    push DWORD input
    push DWORD fmtin
    call _scanf
    add esp,8
    push DWORD[input]
    push DWORD fmt
    call _printf
    add esp,8
    ret