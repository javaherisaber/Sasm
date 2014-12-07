%include "io.inc"
section .data
source db 0,1,2,3  ; ta 256 dar yek byte ja mishe
destin db 20,20,20,20
section .text
global CMAIN
CMAIN:
    mov cx,0E000H
    mov ax,0B001H  ; addad hex ke ba harf shoro mishavand ro hatman avvalesh 0 bezar chon compiler fk mikone label hastan
    mov dl,[source]
    mov [destin],dl
    mov dl,[source+1]
    mov [destin+1],dl
    mov dl,[source+2]
    mov [destin+2],dl
    mov dl,[source+3]
    mov [destin+3],dl
    PRINT_UDEC 1,[destin]
    PRINT_UDEC 1,[destin+1]
    PRINT_UDEC 1,[destin+2]
    PRINT_UDEC 1,[destin+3]
    ret