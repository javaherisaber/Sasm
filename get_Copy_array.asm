%include "io.inc"
section .bss
source resb 4  ; ta 256 dar yek byte ja mishe
destin resb 4
section .data
counter db 0
section .text
global CMAIN
CMAIN:
    
    mov ecx,4
    mov esi,0
jlooper: 
    GET_DEC 1,[destin+esi]
    INC esi
    loop jlooper
    
  
   
    PRINT_UDEC 1,[destin]
    PRINT_UDEC 1,[destin+1]
    PRINT_UDEC 1,[destin+2]
    PRINT_UDEC 1,[destin+3]
    ret