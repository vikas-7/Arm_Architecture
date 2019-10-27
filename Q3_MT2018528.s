     AREA     even_odd, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
	
	MOV R0, #9 ; number to be checked
	MOV R1,#2
	UDIV R2,R0,R1     ;to find quotient
	MLS R2,R2,R1,R0   ;to find remainder
	CMP R2,#0         ;compare register R2 with 0
	ITE EQ
	MOVEQ R3,#0 ; IF R3 is zero then number stored in R0 is even
	MOVNE R3,#1 ; IF R3 is one then number stored in R0 is odd
	B stop
		
stop B stop
	

		
		
     ENDFUNC
     END 
		 
		 