     AREA     fibonacci, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
	
	    MOV  R0, #0               ;first number
		MOV  R1, #1               ;second number
		ADD  R2,R1,R0             ;calculate next value 
		MOV  R3,#0x20000000       ;memory address starting value
		MOV  R4, #11              ;count
		
loop    SUB R4, #1                ;decrement value of r4 by 1
		CMP R4, #0                ;check for r4=0
		BNE LOOP                  ;if r4 is not equal to 0 branch to LOOP
		BEQ stop                  ;if r4 is equal to 0 branch to stop
		
		
LOOP STR R2,[R3],#1               ;store r3+1 into register r2
        MOV  R0,R1                ;move second number to first register
		MOV  R1,R2                ;move next value to second register
		ADD  R2,R1,R0             ;calculate next value

		
		b loop                    ;branch to loop
stop    b stop	                  ;stop execution
		
		
     ENDFUNC
     END 
		 
		 