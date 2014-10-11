%include "io.inc"

section .data
array db 67,34,3,5,7,1

section .text
global CMAIN
CMAIN:
    mov esi,array
    mov bl,[esi]
    inc esi
    mov ecx,05H
doit:
    cmp [esi],bl
    jnc continue
    mov bl,[esi]
continue :
    inc ESI
    loop doit
    PRINT_DEC 1,bl
    ret