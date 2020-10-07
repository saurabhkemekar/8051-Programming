MOV P0,00h  
MOV A, #00h
MOV DPTR, #LOOKUP      ;| address of Lookup table
RESET: MOV B, #00h
HERE: MOVC A, @A+DPTR  ;| loading value of lookup table in accumalator
MOV P1,A
INC B
MOV A,B
CJNE A,#3CH, HERE      ;| check whether B is equal to  60 
JMP RESET
LOOKUP: 
DB  127, 233, 242, 144,  30,   5,  
91, 210, 252, 179,  57,   0,  58,
180, 252, 209,  90,   4,  31, 146,
 242, 233, 125,  19,  11, 110,223,
 248, 161,  42,   1,  75, 197, 253,
 194,  72,   1,  45, 164,249, 221, 
106,  10,  21, 129, 235, 241, 142, 
 29,   5,  93, 212,252, 177,  56, 
  0,  60, 182, 253, 207
