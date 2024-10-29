DATA SEGMENT
    msg1 DB 'Enter a single digit number: $'
    msg2 DB 'The number is even.$'
    msg3 DB 'The number is odd.$'
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA
    MOV DS, AX
    MOV DX, OFFSET msg1
    MOV AH, 09H
    INT 21H


    MOV AH, 01H
    INT 21H

    
    AND AL, 01H 
    JZ EVEN 
    JMP ODD

EVEN:
    MOV DX, OFFSET msg2
    JMP PRINT_MSG

ODD:
    MOV DX, OFFSET msg3

PRINT_MSG:
    MOV AH, 09H
    INT 21H
    MOV AH, 4CH
    INT 21H

CODE ENDS
END START