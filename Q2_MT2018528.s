     AREA     largestno, CODE, READONLY
    EXPORT __main
    ENTRY
__main    FUNCTION
	
	MOV R0, #3		;first number
	MOV R1, #1		;second number
	MOV R2, #3		;third number
	
	CMP R1,R0		;compare r1 with r0
	BGT LOOP0		;if r1 is greater than r0 branch to LOOP0
	BLT LOOP1		;if r1 is less than r0 branch to LOOP1
	
LOOP0 CMP R1,R2		;compare r1 with r2
	BGT LOOP3		;if r1 is greater than r2 branch to LOOP3
	BLT LOOP2		;if r1 is less than r2 branch to LOOP2
	
LOOP1 CMP R0,R2		;compare r0 with r2
	BGT LOOP4		;if r0 is greater than r2 branch to LOOP4
	BLT LOOP2		;if r0 is less than r2 branch to LOOP2
	
LOOP2 MOV R4,R2		;largest number is in register r4
	B stop			;branching to stop
LOOP3 MOV R4,R1		;largest number is in register r4
    B stop			;branching to stop
LOOP4 MOV R4,R0		;largest number is in register r4
    B stop			;branching to stop


stop    B stop			;loop to stop the execution
		ENDFUNC
		END