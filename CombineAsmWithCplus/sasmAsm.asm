global _array

section .text         
_array:
       push ebp           
       mov ebp, esp
       push ecx
       push esi

       mov ecx, [ebp+12]
       mov esi, [ebp+8]

       xor eax, eax 
lp1: add eax, [esi]
       add esi, 4  
       loop lp1  

       pop esi
       pop ecx
       pop ebp
       ret
