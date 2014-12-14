%include "io.inc"

;    input is like this :
;    26
;    50        
;    50
;

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ebx,00H
    mov ECX,03H ;write 3 value in the input each one in separate line
    Back:
    GET_UDEC 2,esi
    add ebx,esi
    LOOP Back
    PRINT_DEC 2,ebx
    ret
    