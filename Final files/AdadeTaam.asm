%include "io.inc"

section .data 
NUM DW 1
RES DW 1

section .bss
INPUT RESB 2



section .text
global CMAIN
CMAIN:
    ;write your code here
    MOV EAX,0
    MOV EBX,0
    MOV ECX,0
    MOV EDX,0
    
    GET_DEC 2,[INPUT]
    
    MOV AX,[INPUT]
    MOV [NUM],AX
    MOV BX,2
    DIV BX
    MOV EBX,0
    
    MOV CX,AX
    
LOOP1:
    MOV EAX,0
    MOV EDX,0
    MOV  AX,[NUM]
    DIV CX
    
    CMP DX,0
    JE LABLET
BACK1:
    LOOP LOOP1
    
    CMP BX,[NUM]
    JE TRUE
FALSE:
    PRINT_STRING "NO"
    RET
    
    
TRUE:
    PRINT_STRING "YES"
    RET
    
    
    PRINT_DEC 2,AX
    NEWLINE
    PRINT_DEC 2,DX
    
    
    
    
    
    
    
    ret
    
    
    
LABLET:
    ADD BX,CX
    JMP BACK1
    
    RET
    
    
    
