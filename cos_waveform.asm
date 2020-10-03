MOV DPTR,#LOOKUP
MOV A,#00H
HERE: MOVC A,@A+DPTR
INC A
JMP HERE
LOOKUP:
DB  5,5,5, 5 , 5 , 5,5, 4 , 4, 4, 4, 4, 4, 4, 3,
       3, 3, 3,3, 2,
       2, 2, 2,2, 2,
       1, 1, 1 , 1, 1,
       1, 0, 0, 0, 0,
       0, 0 ,0, 0 ,0