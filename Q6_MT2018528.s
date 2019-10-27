     AREA    gcd,CODE,READONLY
    EXPORT __main
    ENTRY
	
__main    FUNCTION
		MOV R0, #08		;first number
		MOV R1, #12		;second number
		MOV R2, #0		;Register r2 will provide GCD
		
LOOP	CMP R0, R1		;compare r1 and r0
		BLT LOOP0		;if r0<r1 then branch to loop0
		BGT LOOP1		;if r0>r1 then branch to loop1
		B stop			;if r1=r0 then branch to stop

LOOP0 	SUB R1, R1, R0	;r1=r1-r0
		MOV R2, R1		;store value of r1 to r2
		B LOOP			;branch to LOOP for again Comparing R0&R1
		
LOOP1 	SUB R0, R0, R1	;R0=R0-R1
		MOV R2, R0		;store value of r1 to r2
		B LOOP			;branch to LOOP for again Comparing R0&R1
		
stop    B stop			;loop to stop the  execution
		
		
		ENDFUNC
		END