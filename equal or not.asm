ORG 100h
           
    mov dx, OFFSET msg1
    MOV AH, 09H
    INT 21H

    
    MOV AH, 01H      
    INT 21H
    SUB AL, 30H     
    MOV BL, AL       

    
    mov dx, OFFSET msg2
    MOV AH, 09H
    INT 21H

    
    MOV AH, 01H      
    INT 21H
    SUB AL, 30H      

    
    CMP BL, AL       
    JNE NOT_EQUAL    

    
    mov dx, OFFSET equalMsg
    MOV AH, 09H      
    INT 21H
    JMP EXIT         

NOT_EQUAL:
   
    mov dx, OFFSET notEqualMsg
    MOV AH, 09H      
    INT 21H

EXIT:
    MOV AH, 4CH      
    INT 21H

msg1 db 'Enter first single-digit number: $'
msg2 db 'Enter second single-digit number: $'
equalMsg db 'The numbers are equal.$'
notEqualMsg db 'The numbers are not equal.$'

END