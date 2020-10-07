CLR P0.3       ;|  
MOV P1,#38H    ;| Function set (2 line 5x8 )
CALL ENABLE    ;| set E -> 1 and wait till busy flag set 0 and set E -> 0 

MOV P1,#0EH    ;| dsiplay on\off control
CALL ENABLE

MOV P1,#06H    ;| entry mode 
CALL ENABLE

SETB P0.3      ;| write mode

REPEAT:
MOV P1,#48H    ;| character H
CALL ENABLE


MOV P1,#49H    ;| character I
CALL ENABLE

JMP ENDING


Delay:
	MOV R0,#0F0H
	DJNZ R0,$
	RET

ENABLE:
	SETB P0.2
	CALL Delay
	CLR P0.2
	RET

ENDING:
END
