ORG 100h

mov ah, 09h
lea dx, msg1
int 21h

mov ah, 01h
int 21h
sub al, '0'
mov bl, al

mov ah, 09h
lea dx, msg2
int 21h

mov ah, 01h
int 21h
sub al, '0'
add bl, al

cmp bl, 9
jg two_digits

mov ah, 09h
lea dx, msg3
int 21h

add bl, '0'
mov dl, bl
mov ah, 02h
int 21h
jmp done

two_digits:
mov ah, 09h
lea dx, msg3
int 21h

mov al, bl
mov ah, 0
mov dl, 10
div dl

add al, '0'
mov dl, al 
mov bh, ah
mov ah, 02h
int 21h

mov ah, bh
mov al, ah
add al, '0'           
mov dl, al             
mov ah, 02h            
int 21h                 

done:
mov ah, 4Ch
int 21h

msg1 db 'Enter first digit: $'
msg2 db 'Enter second digit: $'  
msg3 db 'The sum is: $ '