
org 100h
num1 dw 1234h
num2 dw 5678h

start:
    mov ax, num1
    add ax, num2

    mov bx, ax

    mov ah, bh
    call convert_to_hex
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bh
    call convert_lower_nibble
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bl
    call convert_to_hex
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bl
    call convert_lower_nibble
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

convert_to_hex:
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle skip_conversion
    add ah, 7

skip_conversion:
    ret

convert_lower_nibble:
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle skip_lower_conversion
    add ah, 7

skip_lower_conversion:
    ret
