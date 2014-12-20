
defualt offset for these Segments :::
; segment name 		offset name 
// CS            ::  IP 
// DS 			 ::  BX , DI , SI 
// ES 			 ::  BX , DI , SI 
// SS			 ::  BP , SP

override defualt offset register :::
// mov AX,CS:[BP]
// mov DX,SS:[SI] 

//Stack is only accessable with 16 or 32 bit operands

adressing methodes :::: 
;         Adderssing name  		 usable registers          example
//Register indirect addressing :: BX , SI , DI       ->  mov AX,[DI]
//Based    relative addressing :: BP , BX            ->  mov CX,[BX+10]       EQUAL -> mov CX,[BX]+10
//Indexed  relative addressing :: DI , SI            ->  mov DX,[SI+5]        EQUAL -> mov DX,[SI]+5 
//Based    Indexed  addressing :: BP , BX , DI , SI  ->  mov AH,[BP+SI+29]    EQUAL -> mov AH,[BP][SI]+29
