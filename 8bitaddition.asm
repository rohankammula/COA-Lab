org 100h

mov ax, 0b800h 
mov ds, ax


mov al, 02h  
mov bl, 05h 
add al, bl  


add al, 30h  
                   

mov ah, 0Eh 
int 10h      
ret