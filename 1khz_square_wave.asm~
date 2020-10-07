MOV P0,#00H ;Initializing DAC
LOOP:
MOV P1,#0FFH  
ACALL DELAY
MOV P1,#00H
ACALL DELAY
JMP LOOP

DELAY: MOV TMOD,#01B ; TIMER 0 MODE 1 
       MOV TH0,#0FEH ; Load higher bits 
       MOV TL0,#0CH ; load lower bits
       SETB TR0  ; start timer
HERE: JNB TF0,HERE  ; wait for overflow
      CLR TR0  ; clear start timer
      CLR TF0 ; clear overflow timer register
      RET ; return to main function
